<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_describe_global_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes whether the Amazon Web Services account is opted in to cross-account backup

### Description

Describes whether the Amazon Web Services account is opted in to
cross-account backup. Returns an error if the account is not a member of
an Organizations organization. Example:
`⁠describe-global-settings --region us-west-2⁠`

### Usage

    backup_describe_global_settings()

### Value

A list with the following syntax:

    list(
      GlobalSettings = list(
        "string"
      ),
      LastUpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_global_settings()
