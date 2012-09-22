namespace AtomicCms.Common.Utils
{
    using System;
    using System.Linq.Expressions;

    public static class Strong<T>
    {
        public static string Name(Expression<Func<T, object>> action)
        {
            if (null == action || null == action.Body)
            {
                throw new NullReferenceException("action or action.body is null");
            }

            UnaryExpression unary = action.Body as UnaryExpression;
            if (null != unary && null != unary.Operand as MemberExpression)
            {
                return PropertyName(unary.Operand);
            }

            MemberExpression memberCall = action.Body as MemberExpression;
            if (memberCall != null)
            {
                return PropertyName(action.Body);
            }

            MethodCallExpression methodCall = action.Body as MethodCallExpression;
            if (null != methodCall)
            {
                return MethodName(action.Body);
            }

            throw new Exception("Not supported action " + action);
        }

        private static string PropertyName(Expression operand)
        {
            MemberExpression member = operand as MemberExpression;
            if (member != null) return member.Member.Name;

            throw new NullReferenceException("Unxexpected null reference");
        }
        
        private static string MethodName(Expression operand)
        {
            MethodCallExpression member = operand as MethodCallExpression;
            if (member != null) return member.Method.Name;

            throw new NullReferenceException("Unxexpected null reference");
        }
    }
}