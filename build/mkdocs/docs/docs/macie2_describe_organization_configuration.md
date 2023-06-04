<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_describe_organization_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the Amazon Macie configuration settings for an organization in Organizations

### Description

Retrieves the Amazon Macie configuration settings for an organization in
Organizations.

### Usage

    macie2_describe_organization_configuration()

### Value

A list with the following syntax:

    list(
      autoEnable = TRUE|FALSE,
      maxAccountLimitReached = TRUE|FALSE
    )

### Request syntax

    svc$describe_organization_configuration()
