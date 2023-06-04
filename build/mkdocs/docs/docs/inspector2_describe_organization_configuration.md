<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_describe_organization_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe Amazon Inspector configuration settings for an Amazon Web Services organization

### Description

Describe Amazon Inspector configuration settings for an Amazon Web
Services organization.

### Usage

    inspector2_describe_organization_configuration()

### Value

A list with the following syntax:

    list(
      autoEnable = list(
        ec2 = TRUE|FALSE,
        ecr = TRUE|FALSE,
        lambda = TRUE|FALSE
      ),
      maxAccountLimitReached = TRUE|FALSE
    )

### Request syntax

    svc$describe_organization_configuration()
