<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acm_get_account_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the account configuration options associated with an Amazon Web Services account

### Description

Returns the account configuration options associated with an Amazon Web
Services account.

### Usage

    acm_get_account_configuration()

### Value

A list with the following syntax:

    list(
      ExpiryEvents = list(
        DaysBeforeExpiry = 123
      )
    )
