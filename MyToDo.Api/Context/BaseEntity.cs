namespace MyToDo.Api.Context
{
    public class BaseEntity
    {
        public int Id { get; set; }

        public DateTime CreDateTime { get; set; }

        public DateTime Updatetime { get; set; }
    }
}
