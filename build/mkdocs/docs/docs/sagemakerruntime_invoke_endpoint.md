<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemakerruntime_invoke_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## After you deploy a model into production using Amazon SageMaker hosting services, your client applications use this API to get inferences from the model hosted at the specified endpoint

### Description

After you deploy a model into production using Amazon SageMaker hosting
services, your client applications use this API to get inferences from
the model hosted at the specified endpoint.

For an overview of Amazon SageMaker, see [How It
Works](https://docs.aws.amazon.com/sagemaker/latest/dg/).

Amazon SageMaker strips all POST headers except those supported by the
API. Amazon SageMaker might add additional headers. You should not rely
on the behavior of headers outside those enumerated in the request
syntax.

Calls to `invoke_endpoint` are authenticated by using Amazon Web
Services Signature Version 4. For information, see [Authenticating
Requests (Amazon Web Services Signature Version
4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
in the *Amazon S3 API Reference*.

A customer's model containers must respond to requests within 60
seconds. The model itself can have a maximum processing time of 60
seconds before responding to invocations. If your model is going to take
50-60 seconds of processing time, the SDK socket timeout should be set
to be 70 seconds.

Endpoints are scoped to an individual account, and are not public. The
URL does not contain the account ID, but Amazon SageMaker determines the
account ID from the authentication token that is supplied by the caller.

### Usage

    sagemakerruntime_invoke_endpoint(EndpointName, Body, ContentType,
      Accept, CustomAttributes, TargetModel, TargetVariant,
      TargetContainerHostname, InferenceId, EnableExplanations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemakerruntime_invoke_endpoint_:_EndpointName">EndpointName</code></td>
<td><p>[required] The name of the endpoint that you specified when you
created the endpoint using the <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html">CreateEndpoint</a>
API.</p></td>
</tr>
<tr class="even">
<td><code id="sagemakerruntime_invoke_endpoint_:_Body">Body</code></td>
<td><p>[required] Provides input data, in the format specified in the
<code>ContentType</code> request header. Amazon SageMaker passes all of
the data in the body to the model.</p>
<p>For information about the format of the request body, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html">Common
Data Formats-Inference</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemakerruntime_invoke_endpoint_:_ContentType">ContentType</code></td>
<td><p>The MIME type of the input data in the request body.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemakerruntime_invoke_endpoint_:_Accept">Accept</code></td>
<td><p>The desired MIME type of the inference in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemakerruntime_invoke_endpoint_:_CustomAttributes">CustomAttributes</code></td>
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
attribute with <code style="white-space: pre;">⁠Trace ID:⁠</code> in your
post-processing function.</p>
<p>This feature is currently supported in the Amazon Web Services SDKs
but not in the Amazon SageMaker Python SDK.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemakerruntime_invoke_endpoint_:_TargetModel">TargetModel</code></td>
<td><p>The model to request for inference when invoking a multi-model
endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemakerruntime_invoke_endpoint_:_TargetVariant">TargetVariant</code></td>
<td><p>Specify the production variant to send the inference request to
when invoking an endpoint that is running two or more variants. Note
that this parameter overrides the default behavior for the endpoint,
which is to distribute the invocation traffic based on the variant
weights.</p>
<p>For information about how to use variant targeting to perform a/b
testing, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html">Test
models in production</a></p></td>
</tr>
<tr class="even">
<td><code
id="sagemakerruntime_invoke_endpoint_:_TargetContainerHostname">TargetContainerHostname</code></td>
<td><p>If the endpoint hosts multiple containers and is configured to
use direct invocation, this parameter specifies the host name of the
container to invoke.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemakerruntime_invoke_endpoint_:_InferenceId">InferenceId</code></td>
<td><p>If you provide a value, it is added to the captured data when you
enable data capture on the endpoint. For information about data capture,
see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-data-capture.html">Capture
Data</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemakerruntime_invoke_endpoint_:_EnableExplanations">EnableExplanations</code></td>
<td><p>An optional JMESPath expression used to override the
<code>EnableExplanations</code> parameter of the
<code>ClarifyExplainerConfig</code> API. See the <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/clarify-online-explainability-create-endpoint.html#clarify-online-explainability-create-endpoint-enable">EnableExplanations</a>
section in the developer guide for more information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Body = raw,
      ContentType = "string",
      InvokedProductionVariant = "string",
      CustomAttributes = "string"
    )

### Request syntax

    svc$invoke_endpoint(
      EndpointName = "string",
      Body = raw,
      ContentType = "string",
      Accept = "string",
      CustomAttributes = "string",
      TargetModel = "string",
      TargetVariant = "string",
      TargetContainerHostname = "string",
      InferenceId = "string",
      EnableExplanations = "string"
    )
