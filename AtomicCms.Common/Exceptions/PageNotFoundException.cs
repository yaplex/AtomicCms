namespace AtomicCms.Common.Exceptions
{
    using System;

    public class PageNotFoundException : AtomicCmsException
    {
        public PageNotFoundException()
        {
        }

        public PageNotFoundException(string message, Exception innerException) : base(message, 
                                                                                       innerException)
        {
        }

        public PageNotFoundException(string message) : base(message)
        {
        }
    }
}