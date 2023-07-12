using MyToDo.Api.Context;
using MyToDo.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MyToDo.Api.Service
{
    public class LoginService : ILoginService
    {
        private readonly IUnitOfWork work;

        public LoginService(IUnitOfWork work)
        {
            this.work = work;
        }

        public async Task<ApiResponse> LoginAsync(string Account, string Password)
        {

            return new ApiResponse(false, "登录失败！");

        }

        public async Task<ApiResponse> Resgiter(User user)
        {

            return new ApiResponse("注册账号失败！");
        }
    }
}
