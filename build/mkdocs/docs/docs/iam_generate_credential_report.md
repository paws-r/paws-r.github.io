<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_generate_credential_report</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a credential report for the Amazon Web Services account

### Description

Generates a credential report for the Amazon Web Services account. For
more information about the credential report, see [Getting credential
reports](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html)
in the *IAM User Guide*.

### Usage

    iam_generate_credential_report()

### Value

A list with the following syntax:

    list(
      State = "STARTED"|"INPROGRESS"|"COMPLETE",
      Description = "string"
    )
