<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_describe_customer_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get and view a list of customer agreements, along with their signed status and whether the customer is an NNIPartner, NNIPartnerV2, or a nonPartner

### Description

Get and view a list of customer agreements, along with their signed
status and whether the customer is an NNIPartner, NNIPartnerV2, or a
nonPartner.

### Usage

    directconnect_describe_customer_metadata()

### Value

A list with the following syntax:

    list(
      agreements = list(
        list(
          agreementName = "string",
          status = "string"
        )
      ),
      nniPartnerType = "v1"|"v2"|"nonPartner"
    )
