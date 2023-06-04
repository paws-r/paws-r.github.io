<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_describe_account_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes your OpsWorks-CM account attributes

### Description

Describes your OpsWorks-CM account attributes.

This operation is synchronous.

### Usage

    opsworkscm_describe_account_attributes()

### Value

A list with the following syntax:

    list(
      Attributes = list(
        list(
          Name = "string",
          Maximum = 123,
          Used = 123
        )
      )
    )

### Request syntax

    svc$describe_account_attributes()
