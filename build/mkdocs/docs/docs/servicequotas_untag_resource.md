<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicequotas_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from the specified applied quota

### Description

Removes tags from the specified applied quota. You can specify one or
more tags to remove.

### Usage

    servicequotas_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicequotas_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the applied quota
that you want to untag. You can get this information by using the
Service Quotas console, or by listing the quotas using the <a
href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a>
AWS CLI command or the <code>list_service_quotas</code> AWS API
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="servicequotas_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The keys of the tags that you want to remove from the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceARN = "string",
      TagKeys = list(
        "string"
      )
    )
