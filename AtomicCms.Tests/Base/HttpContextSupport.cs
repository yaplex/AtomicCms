namespace AtomicCms.Tests.Base
{
    using System;
    using System.Web;
    using Moq;

    public class HttpContextSupport
    {
        public static HttpContextBase CreateFackeContext(string url)
        {
            Mock<HttpContextBase> httpContextBase = new Mock<HttpContextBase>();
            Mock<HttpRequestBase> httpRequestBase = new Mock<HttpRequestBase>();
            httpRequestBase.Setup(x => x.AppRelativeCurrentExecutionFilePath).Returns(url);
            httpRequestBase.Setup(x => x.ApplicationPath).Returns("/");
            httpRequestBase.Setup(x => x.Url).Returns(new Uri("http://www.domain.com/"));
            Mock<HttpResponseBase> httpResponseBase = new Mock<HttpResponseBase>();
            httpResponseBase.Setup(x => x.ApplyAppPathModifier(It.IsAny<string>())).Returns(url);
            httpContextBase.Setup(x => x.Request).Returns(httpRequestBase.Object);
            httpContextBase.Setup(x => x.Response).Returns(httpResponseBase.Object);

            return httpContextBase.Object;
        }
    }
}