<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_describe_account_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns attributes related to AWS Elastic Beanstalk that are associated with the calling AWS account

### Description

Returns attributes related to AWS Elastic Beanstalk that are associated
with the calling AWS account.

The result currently has one set of attributes—resource quotas.

### Usage

    elasticbeanstalk_describe_account_attributes()

### Value

A list with the following syntax:

    list(
      ResourceQuotas = list(
        ApplicationQuota = list(
          Maximum = 123
        ),
        ApplicationVersionQuota = list(
          Maximum = 123
        ),
        EnvironmentQuota = list(
          Maximum = 123
        ),
        ConfigurationTemplateQuota = list(
          Maximum = 123
        ),
        CustomPlatformQuota = list(
          Maximum = 123
        )
      )
    )
