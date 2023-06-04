<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_start_resource_evaluation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Runs an on-demand evaluation for the specified resource to determine whether the resource details will comply with configured Config rules

### Description

Runs an on-demand evaluation for the specified resource to determine
whether the resource details will comply with configured Config rules.
You can also use it for evaluation purposes. Config recommends using an
evaluation context. It runs an execution against the resource details
with all of the Config rules in your account that match with the
specified proactive mode and resource type.

Ensure you have the `cloudformation:DescribeType` role setup to validate
the resource type schema.

You can find the [Resource type
schema](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html)
in "*Amazon Web Services public extensions*" within the CloudFormation
registry or with the following CLI commmand:
`⁠aws cloudformation describe-type --type-name "AWS::S3::Bucket" --type RESOURCE⁠`.

For more information, see [Managing extensions through the
CloudFormation
registry](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry.html#registry-view)
and [Amazon Web Services resource and property types
reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)
in the CloudFormation User Guide.

### Usage

    configservice_start_resource_evaluation(ResourceDetails,
      EvaluationContext, EvaluationMode, EvaluationTimeout, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_start_resource_evaluation_:_ResourceDetails">ResourceDetails</code></td>
<td><p>[required] Returns a <code>ResourceDetails</code>
object.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_start_resource_evaluation_:_EvaluationContext">EvaluationContext</code></td>
<td><p>Returns an <code>EvaluationContext</code> object.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_start_resource_evaluation_:_EvaluationMode">EvaluationMode</code></td>
<td><p>[required] The mode of an evaluation. The valid values for this
API are <code>DETECTIVE</code> and <code>PROACTIVE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_start_resource_evaluation_:_EvaluationTimeout">EvaluationTimeout</code></td>
<td><p>The timeout for an evaluation. The default is 900 seconds. You
cannot specify a number greater than 3600. If you specify 0, Config uses
the default.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_start_resource_evaluation_:_ClientToken">ClientToken</code></td>
<td><p>A client token is a unique, case-sensitive string of up to 64
ASCII characters. To make an idempotent API request using one of these
actions, specify a client token in the request.</p>
<p>Avoid reusing the same client token for other API requests. If you
retry a request that completed successfully using the same client token
and the same parameters, the retry succeeds without performing any
further actions. If you retry a successful request using the same client
token, but one or more of the parameters are different, other than the
Region or Availability Zone, the retry fails with an
IdempotentParameterMismatch error.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceEvaluationId = "string"
    )

### Request syntax

    svc$start_resource_evaluation(
      ResourceDetails = list(
        ResourceId = "string",
        ResourceType = "string",
        ResourceConfiguration = "string",
        ResourceConfigurationSchemaType = "CFN_RESOURCE_SCHEMA"
      ),
      EvaluationContext = list(
        EvaluationContextIdentifier = "string"
      ),
      EvaluationMode = "DETECTIVE"|"PROACTIVE",
      EvaluationTimeout = 123,
      ClientToken = "string"
    )
