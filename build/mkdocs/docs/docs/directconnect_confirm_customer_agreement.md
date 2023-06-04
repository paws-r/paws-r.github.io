<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_confirm_customer_agreement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The confirmation of the terms of agreement when creating the connection/link aggregation group (LAG)

### Description

The confirmation of the terms of agreement when creating the
connection/link aggregation group (LAG).

### Usage

    directconnect_confirm_customer_agreement(agreementName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_confirm_customer_agreement_:_agreementName">agreementName</code></td>
<td><p>The name of the customer agreement.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      status = "string"
    )

### Request syntax

    svc$confirm_customer_agreement(
      agreementName = "string"
    )
