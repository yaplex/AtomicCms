namespace AtomicCms.Common.Exceptions
{
    using System;

    public class AtomicCmsException : ApplicationException
    {
        public AtomicCmsException()
        {
        }

        public AtomicCmsException(string message, Exception innerException)
            : base(message,
                   innerException)
        {
        }

        public AtomicCmsException(string message) : base(message)
        {
        }
    }
}