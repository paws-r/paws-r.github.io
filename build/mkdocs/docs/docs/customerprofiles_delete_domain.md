<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_delete_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specific domain and all of its customer data, such as customer profile attributes and their related objects

### Description

Deletes a specific domain and all of its customer data, such as customer
profile attributes and their related objects.

### Usage

    customerprofiles_delete_domain(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_delete_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Message = "string"
    )

### Request syntax

    svc$delete_domain(
      DomainName = "string"
    )
