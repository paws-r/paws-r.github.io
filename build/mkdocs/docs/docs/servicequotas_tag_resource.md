<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicequotas_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds tags to the specified applied quota

### Description

Adds tags to the specified applied quota. You can include one or more
tags to add to the quota.

### Usage

    servicequotas_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicequotas_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the applied quota.
You can get this information by using the Service Quotas console, or by
listing the quotas using the <a
href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a>
AWS CLI command or the <code>list_service_quotas</code> AWS API
operation.</p></td>
</tr>
<tr class="even">
<td><code id="servicequotas_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags that you want to add to the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceARN = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
