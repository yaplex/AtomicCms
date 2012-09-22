namespace AtomicCms.Services
{
    using System.Collections.Generic;
    using System.IO;

    public class FileUploadService
    {
        public IEnumerable<FileInfo> GetFiles(string uploadsFolder)
        {
            if (Directory.Exists(uploadsFolder))
            {
                var info = new DirectoryInfo(uploadsFolder);
                return info.GetFiles();
            }

            return new List<FileInfo>();
        }
    }
}