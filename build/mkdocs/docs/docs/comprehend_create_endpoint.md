<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_create_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a model-specific endpoint for synchronous inference for a previously trained custom model For information about endpoints, see Managing endpoints

### Description

Creates a model-specific endpoint for synchronous inference for a
previously trained custom model For information about endpoints, see
[Managing
endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).

### Usage

    comprehend_create_endpoint(EndpointName, ModelArn,
      DesiredInferenceUnits, ClientRequestToken, Tags, DataAccessRoleArn,
      FlywheelArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_create_endpoint_:_EndpointName">EndpointName</code></td>
<td><p>[required] This is the descriptive suffix that becomes part of
the <code>EndpointArn</code> used for all subsequent requests to this
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_endpoint_:_ModelArn">ModelArn</code></td>
<td><p>The Amazon Resource Number (ARN) of the model to which the
endpoint will be attached.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_endpoint_:_DesiredInferenceUnits">DesiredInferenceUnits</code></td>
<td><p>[required] The desired number of inference units to be used by
the model using this endpoint. Each inference unit represents of a
throughput of 100 characters per second.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_endpoint_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>An idempotency token provided by the customer. If this token
matches a previous endpoint creation request, Amazon Comprehend will not
return a <code>ResourceInUseException</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="comprehend_create_endpoint_:_Tags">Tags</code></td>
<td><p>Tags to associate with the endpoint. A tag is a key-value pair
that adds metadata to the endpoint. For example, a tag with "Sales" as
the key might be added to an endpoint to indicate its use by the sales
department.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_endpoint_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM role that grants Amazon
Comprehend read access to trained custom models encrypted with a
customer managed key (ModelKmsKeyId).</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_endpoint_:_FlywheelArn">FlywheelArn</code></td>
<td><p>The Amazon Resource Number (ARN) of the flywheel to which the
endpoint will be attached.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointArn = "string",
      ModelArn = "string"
    )

### Request syntax

    svc$create_endpoint(
      EndpointName = "string",
      ModelArn = "string",
      DesiredInferenceUnits = 123,
      ClientRequestToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      DataAccessRoleArn = "string",
      FlywheelArn = "string"
    )
