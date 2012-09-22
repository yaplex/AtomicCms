namespace AtomicCms.Web.Core.IoC
{
    using System;
    using StructureMap;

    public class IoC
    {
        public static object Get(Type t)
        {
            return ObjectFactory.GetInstance(t);
        }

        public static T Get<T>()
        {
            return ObjectFactory.GetInstance<T>();
        }
    }
}