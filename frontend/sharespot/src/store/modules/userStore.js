import jwt_decode from "jwt-decode";
import { login, findById } from "@/js/user.js";


const userStore = {
    namespaced: true,
    state: {
        isLogin: false,
        isLoginError: false,
        userInfo: null,
        kakaoUserInfo: [],
    },
    getters: {
        checkUserInfo: function (state) {
            return state.userInfo;
        },
    },
    mutations: {
        SET_IS_LOGIN: (state, isLogin) => {
            state.isLogin = isLogin;

        },
        SET_IS_LOGIN_ERROR: (state, isLoginError) => {
            state.isLoginError = isLoginError;
        },
        SET_USER_INFO: (state, userInfo) => {
            if (userInfo != null) {
                state.isLogin = true;
            }
            state.userInfo = userInfo;
        },
        SET_KAKAO_USER_INFO(state, kakaoInfo) { 
            state.kakaoUserInfo = [];
            state.kakaoUserInfo.push(kakaoInfo);
        }
    },
    actions: {
        async setKakaoUserInfo({commit}, kakaoInfo) { 
            commit('SET_KAKAO_USER_INFO', kakaoInfo);
            console.log("userStore: setKakaoUserInfo"+kakaoInfo);
        },
        async userConfirm({ commit }, user) {
            await login(
                user,
                (response) => {
                    if (response.data.message === "success") {
                        let token = response.data["Authorization"];
                        commit("SET_IS_LOGIN", true);
                        commit("SET_IS_LOGIN_ERROR", false);
                        sessionStorage.setItem("Authorization", token);
                    } else {
                        commit("SET_IS_LOGIN", false);
                        commit("SET_IS_LOGIN_ERROR", true);
                    }
                }
            );
        },
        async getUserInfo({ commit }, token) {
            let decode_token = jwt_decode(token);
            await findById(
                decode_token.userid,
                (response) => {
                    if (response.data.message === "success") {
                        console.log(response.data.userInfo); //로그인한 userInfo 확인
                        commit("SET_USER_INFO", response.data.userInfo);
                        console.log(response.data.userInfo)
                    } else {
                        console.log("유저 정보 없음");
                    }
                },
                (error) => {
                    console.log(error);
                }
            );
        },
    }
};

export default userStore;