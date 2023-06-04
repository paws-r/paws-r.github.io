<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a specified resource policy

### Description

Retrieves a specified resource policy.

### Usage

    glue_get_resource_policy(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>The ARN of the Glue resource for which to retrieve the resource
policy. If not supplied, the Data Catalog resource policy is returned.
Use <code>get_resource_policies</code> to view all existing resource
policies. For more information see <a
href="https://docs.aws.amazon.com/glue/latest/dg/glue-specifying-resource-arns.html">Specifying
Glue Resource ARNs</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyInJson = "string",
      PolicyHash = "string",
      CreateTime = as.POSIXct(
        "2015-01-01"
      ),
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_resource_policy(
      ResourceArn = "string"
    )
