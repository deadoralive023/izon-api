export type AuthContextValue = {
    currentUser: any;
    login: (email: string, password: string) => void;
    logout: (type: void) => void;
    reLogin: (type: void) => void;
    loading: boolean;
    loginError: boolean;
    setLoginError: (type: boolean) => void;
  };
  export const AuthContext = createContext<AuthContextValue>({
    currentUser: null,
    login: (type) => "",
    logout: (type) => "",
    reLogin: (type) => "",
    loading: true,
    loginError: false,
    setLoginError: (type) => "",
  });
  
    # -------------------------------------------------
    const AuthContextProvider = ({ children }: any) => {
    const history = useHistory();
    const [loginUser, { data, client }] = useMutation(SIGN_IN_USER);
    const [logoutUser, { data: logOutData }] = useMutation(LOGOUT_USER);
    const [currentUser, setCurrentUser] = useState(null);
    const [loading, setLoading] = useState<boolean>(true);
    const [loginError, setLoginError] = useState<boolean>(false);
    const { refetch: refetchCurrentUser } = useQuery(GET_CURRENT_USER, {
      fetchPolicy: "network-only",
      notifyOnNetworkStatusChange: true,
      onCompleted: (res) => {
        if (res.getCurrentUser !== null) {
          setCurrentUser(res.getCurrentUser);
          if (!res.getCurrentUser.institutionsStepDone) {
            history.push("/join-institutions-step");
          }
        }
        setLoading(false);
      },
      onError: (res) => {
        setLoading(false);
      },
    });

    # -------------------------------------------------
    const reLogin = (token: any) => {
      storeData(token).then(() => {
        refetchCurrentUser();
      });
    };
    const login = (email: string, password: string) => {
      loginUser({
        variables: { credentials: { email: email, password: password } },
      });
    };
    const storeData = async (value: string) => {
      try {
        await localForage.setItem("@mobile-app-token", value);
      } catch (e) {
        console.log("localstorage error");
      }
    };
    useEffect(() => {
      if (data !== undefined) {
        if (data.signInUser.error) {
          setLoginError(true);
          setLoading(false);
        } else {
          storeData(data.signInUser.token).then(() => {
            setCurrentUser(data.signInUser.user);
            setLoginError(false);
            setLoading(false);
          });
        }
      }
    }, [data]);
    useEffect(() => {
      if (logOutData !== undefined) {
        storeData("").then(() => {
          client.clearStore();
          setLoading(false);
          setCurrentUser(null);
        });
      }
      // eslint-disable-next-line react-hooks/exhaustive-deps
    }, [logOutData]);
    const logout = () => {
      setLoading(true);
      logoutUser();
    };
    const context = {
      currentUser,
      login,
      logout,
      loading,
      loginError,
      setLoginError,
      reLogin,
    };