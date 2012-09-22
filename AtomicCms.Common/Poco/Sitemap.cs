namespace AtomicCms.Common.Entities
{
    using System;
    using System.Collections.Generic;
    using System.IO;
    using System.Xml;
    using System.Xml.Serialization;
    using Enumeration;

    [XmlRoot(ElementName = "urlset", Namespace = "http://www.sitemaps.org/schemas/sitemap/0.9")]
    [Serializable]
    public class Sitemap : List<SitemapUrl>
    {
        

        [XmlInclude(typeof (SitemapUrl))]
        public void Serialize(TextWriter writer)
        {
            XmlSerializer serializer = new XmlSerializer(typeof (Sitemap));
            XmlTextWriter xmlTextWriter = new XmlTextWriter(writer);
            serializer.Serialize(xmlTextWriter,
                                 this);
        }

        
    }

    [XmlRoot(ElementName = "url")]
    [XmlType(TypeName = "url")]
    [Serializable]
    public class SitemapUrl 
    {
        private DateTime lastModified;

        

        [XmlElement(ElementName = "loc")]
        public string Location { get; set; }

        [XmlElement(ElementName = "lastmod")]
        public string LastModified
        {
            get
            {
                if (DateTime.MinValue.Equals(this.lastModified))
                {
                    this.lastModified = DateTime.Now;
                }

                return this.lastModified.ToString("yyyy-MM-dd");
            }
            set { this.lastModified = DateTime.Parse(value); }
        }

        [XmlElement(ElementName = "changefreq")]
        public ChangeFrequency ChangeFrequency { get; set; }

        [XmlElement(ElementName = "priority")]
        public double Priority { get; set; }

         
    }
}