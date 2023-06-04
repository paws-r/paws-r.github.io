<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_list_provisioned_concurrency_configs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of provisioned concurrency configurations for a function

### Description

Retrieves a list of provisioned concurrency configurations for a
function.

### Usage

    lambda_list_provisioned_concurrency_configs(FunctionName, Marker,
      MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_list_provisioned_concurrency_configs_:_FunctionName">FunctionName</code></td>
<td><p>[required] The name of the Lambda function.</p>
<p><strong>Name formats</strong></p>
<ul>
<li><p><strong>Function name</strong> – <code
style="white-space: pre;">⁠my-function⁠</code>.</p></li>
<li><p><strong>Function ARN</strong> – <code
style="white-space: pre;">⁠arn:aws:lambda:us-west-2:123456789012:function:my-function⁠</code>.</p></li>
<li><p><strong>Partial ARN</strong> – <code
style="white-space: pre;">⁠123456789012:function:my-function⁠</code>.</p></li>
</ul>
<p>The length constraint applies only to the full ARN. If you specify
only the function name, it is limited to 64 characters in
length.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_list_provisioned_concurrency_configs_:_Marker">Marker</code></td>
<td><p>Specify the pagination token that's returned by a previous
request to retrieve the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_list_provisioned_concurrency_configs_:_MaxItems">MaxItems</code></td>
<td><p>Specify a number to limit the number of configurations
returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProvisionedConcurrencyConfigs = list(
        list(
          FunctionArn = "string",
          RequestedProvisionedConcurrentExecutions = 123,
          AvailableProvisionedConcurrentExecutions = 123,
          AllocatedProvisionedConcurrentExecutions = 123,
          Status = "IN_PROGRESS"|"READY"|"FAILED",
          StatusReason = "string",
          LastModified = "string"
        )
      ),
      NextMarker = "string"
    )

### Request syntax

    svc$list_provisioned_concurrency_configs(
      FunctionName = "string",
      Marker = "string",
      MaxItems = 123
    )
