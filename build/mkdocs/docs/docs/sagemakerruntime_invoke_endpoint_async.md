<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemakerruntime_invoke_endpoint_async</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## After you deploy a model into production using Amazon SageMaker hosting services, your client applications use this API to get inferences from the model hosted at the specified endpoint in an asynchronous manner

### Description

After you deploy a model into production using Amazon SageMaker hosting
services, your client applications use this API to get inferences from
the model hosted at the specified endpoint in an asynchronous manner.

Inference requests sent to this API are enqueued for asynchronous
processing. The processing of the inference request may or may not
complete before you receive a response from this API. The response from
this API will not contain the result of the inference request but
contain information about where you can locate it.

Amazon SageMaker strips all `POST` headers except those supported by the
API. Amazon SageMaker might add additional headers. You should not rely
on the behavior of headers outside those enumerated in the request
syntax.

Calls to `invoke_endpoint_async` are authenticated by using Amazon Web
Services Signature Version 4. For information, see [Authenticating
Requests (Amazon Web Services Signature Version
4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
in the *Amazon S3 API Reference*.

### Usage

    sagemakerruntime_invoke_endpoint_async(EndpointName, ContentType,
      Accept, CustomAttributes, InferenceId, InputLocation, RequestTTLSeconds,
      InvocationTimeoutSeconds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemakerruntime_invoke_endpoint_async_:_EndpointName">EndpointName</code></td>
<td><p>[required] The name of the endpoint that you specified when you
created the endpoint using the <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html"><code>CreateEndpoint</code></a>
API.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemakerruntime_invoke_endpoint_async_:_ContentType">ContentType</code></td>
<td><p>The MIME type of the input data in the request body.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemakerruntime_invoke_endpoint_async_:_Accept">Accept</code></td>
<td><p>The desired MIME type of the inference in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemakerruntime_invoke_endpoint_async_:_CustomAttributes">CustomAttributes</code></td>
<td><p>Provides additional information about a request for an inference
submitted to a model hosted at an Amazon SageMaker endpoint. The
information is an opaque value that is forwarded verbatim. You could use
this value, for example, to provide an ID that you can use to track a
request or to provide other metadata that a service endpoint was
programmed to process. The value must consist of no more than 1024
visible US-ASCII characters as specified in <a
href="https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6">Section
3.3.6. Field Value Components</a> of the Hypertext Transfer Protocol
(HTTP/1.1).</p>
<p>The code in your model is responsible for setting or updating any
custom attributes in the response. If your code does not set this value
in the response, an empty value is returned. For example, if a custom
attribute represents the trace ID, your model can prepend the custom
attribute with <code style="white-space: pre;">⁠Trace ID⁠</code>: in your
post-processing function.</p>
<p>This feature is currently supported in the Amazon Web Services SDKs
but not in the Amazon SageMaker Python SDK.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemakerruntime_invoke_endpoint_async_:_InferenceId">InferenceId</code></td>
<td><p>The identifier for the inference request. Amazon SageMaker will
generate an identifier for you if none is specified.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemakerruntime_invoke_endpoint_async_:_InputLocation">InputLocation</code></td>
<td><p>[required] The Amazon S3 URI where the inference request payload
is stored.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemakerruntime_invoke_endpoint_async_:_RequestTTLSeconds">RequestTTLSeconds</code></td>
<td><p>Maximum age in seconds a request can be in the queue before it is
marked as expired. The default is 6 hours, or 21,600 seconds.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemakerruntime_invoke_endpoint_async_:_InvocationTimeoutSeconds">InvocationTimeoutSeconds</code></td>
<td><p>Maximum amount of time in seconds a request can be processed
before it is marked as expired. The default is 15 minutes, or 900
seconds.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InferenceId = "string",
      OutputLocation = "string",
      FailureLocation = "string"
    )

### Request syntax

    svc$invoke_endpoint_async(
      EndpointName = "string",
      ContentType = "string",
      Accept = "string",
      CustomAttributes = "string",
      InferenceId = "string",
      InputLocation = "string",
      RequestTTLSeconds = 123,
      InvocationTimeoutSeconds = 123
    )
