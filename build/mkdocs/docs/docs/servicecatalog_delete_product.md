<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_delete_product</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified product

### Description

Deletes the specified product.

You cannot delete a product if it was shared with you or is associated
with a portfolio.

A delegated admin is authorized to invoke this command.

### Usage

    servicecatalog_delete_product(AcceptLanguage, Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_delete_product_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="servicecatalog_delete_product_:_Id">Id</code></td>
<td><p>[required] The product identifier.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_product(
      AcceptLanguage = "string",
      Id = "string"
    )
