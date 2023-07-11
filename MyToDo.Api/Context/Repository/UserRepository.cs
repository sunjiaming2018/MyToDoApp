﻿using Microsoft.EntityFrameworkCore;

namespace MyToDo.Api.Context.Repository
{
    public class UserRepository : Repository<User>, IRepository<User>
    {
        public UserRepository(DbContext dbContext) : base(dbContext)
        {
        }
    }
}

