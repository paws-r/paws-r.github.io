<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicequotas_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the tags assigned to the specified applied quota

### Description

Returns a list of the tags assigned to the specified applied quota.

### Usage

    servicequotas_list_tags_for_resource(ResourceARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicequotas_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the applied quota
for which you want to list tags. You can get this information by using
the Service Quotas console, or by listing the quotas using the <a
href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a>
AWS CLI command or the <code>list_service_quotas</code> AWS API
operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceARN = "string"
    )
