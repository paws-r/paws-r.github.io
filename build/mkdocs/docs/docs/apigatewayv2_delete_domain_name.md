<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigatewayv2_delete_domain_name</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a domain name

### Description

Deletes a domain name.

### Usage

    apigatewayv2_delete_domain_name(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigatewayv2_delete_domain_name_:_DomainName">DomainName</code></td>
<td><p>[required] The domain name.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_domain_name(
      DomainName = "string"
    )
