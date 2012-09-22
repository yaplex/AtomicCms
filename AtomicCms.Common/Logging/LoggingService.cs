namespace AtomicCms.Common.Logging
{
    using System;
    using log4net;

    public class LoggingService
    {
        private readonly ILog _log;

        public LoggingService()
        {
            _log = LogManager.GetLogger("AtomicCms");
        }

        public void Warn(object message)
        {
            _log.Warn(message);
        }

        public void Info(object message)
        {
            _log.Info(message);
        }

        public void Exception(Exception ex)
        {
            _log.Error(ex);
        }
    }
}