const base = {
    get() {
                return {
            url : "http://localhost:8080/springboot03445/",
            name: "springboot03445",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot03445/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "企业客户管理系统"
        } 
    }
}
export default base
