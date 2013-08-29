using System;
using System.Reflection;
using System.ServiceModel.Channels;
using System.Threading;
using System.Xml;

namespace Composite.OData
{
	public class MessageWrapper : Message, IDisposable
	{
		private Message _innerMessage;

		public MessageWrapper(Message innerMessage)
		{
			_innerMessage = innerMessage;
		}

		protected override void OnWriteBodyContents(XmlDictionaryWriter writer)
		{
			InvokeProtectedMethod("OnWriteBodyContents", writer);
		}

		protected override void OnClose()
		{
			InvokeProtectedMethod("OnClose");
		}

		protected override MessageBuffer OnCreateBufferedCopy(int maxBufferSize)
		{
			return InvokeProtectedMethod2("OnCreateBufferedCopy", maxBufferSize) as MessageBuffer;
		}

		public override MessageHeaders Headers
		{
			get { return _innerMessage.Headers; }
		}

		public override MessageProperties Properties
		{
			get { return _innerMessage.Properties; }
		}

		public override MessageVersion Version
		{
			get { return _innerMessage.Version; }
		}

		private void InvokeProtectedMethod(string name, params object[] parameters)
		{
			typeof(Message).GetMethod(name, BindingFlags.NonPublic | BindingFlags.Instance).Invoke(_innerMessage, parameters);
		}

		private object InvokeProtectedMethod2(string name, params object[] parameters)
		{
			return typeof(Message).GetMethod(name, BindingFlags.NonPublic | BindingFlags.Instance).Invoke(_innerMessage, parameters);
		}

		public event ThreadStart OnDispose;


		void IDisposable.Dispose()
		{
			(_innerMessage as IDisposable).Dispose();

			if (OnDispose != null)
			{
				OnDispose();
			}
		}
	}
}