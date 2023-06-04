<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_put_configuration_aggregator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates and updates the configuration aggregator with the selected source accounts and regions

### Description

Creates and updates the configuration aggregator with the selected
source accounts and regions. The source account can be individual
account(s) or an organization.

`accountIds` that are passed will be replaced with existing accounts. If
you want to add additional accounts into the aggregator, call
`describe_configuration_aggregators` to get the previous accounts and
then append new ones.

Config should be enabled in source accounts and regions you want to
aggregate.

If your source type is an organization, you must be signed in to the
management account or a registered delegated administrator and all the
features must be enabled in your organization. If the caller is a
management account, Config calls `EnableAwsServiceAccess` API to enable
integration between Config and Organizations. If the caller is a
registered delegated administrator, Config calls
`ListDelegatedAdministrators` API to verify whether the caller is a
valid delegated administrator.

To register a delegated administrator, see [Register a Delegated
Administrator](https://docs.aws.amazon.com/config/latest/developerguide/set-up-aggregator-cli.html#register-a-delegated-administrator-cli)
in the *Config developer guide*.

`put_configuration_aggregator` is an idempotent API. Subsequent requests
won’t create a duplicate resource if one was already created. If a
following request has different `tags` values, Config will ignore these
differences and treat it as an idempotent request of the previous. In
this case, `tags` will not be updated, even if they are different.

### Usage

    configservice_put_configuration_aggregator(ConfigurationAggregatorName,
      AccountAggregationSources, OrganizationAggregationSource, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_put_configuration_aggregator_:_ConfigurationAggregatorName">ConfigurationAggregatorName</code></td>
<td><p>[required] The name of the configuration aggregator.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_configuration_aggregator_:_AccountAggregationSources">AccountAggregationSources</code></td>
<td><p>A list of AccountAggregationSource object.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_put_configuration_aggregator_:_OrganizationAggregationSource">OrganizationAggregationSource</code></td>
<td><p>An OrganizationAggregationSource object.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_configuration_aggregator_:_Tags">Tags</code></td>
<td><p>An array of tag object.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationAggregator = list(
        ConfigurationAggregatorName = "string",
        ConfigurationAggregatorArn = "string",
        AccountAggregationSources = list(
          list(
            AccountIds = list(
              "string"
            ),
            AllAwsRegions = TRUE|FALSE,
            AwsRegions = list(
              "string"
            )
          )
        ),
        OrganizationAggregationSource = list(
          RoleArn = "string",
          AwsRegions = list(
            "string"
          ),
          AllAwsRegions = TRUE|FALSE
        ),
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        CreatedBy = "string"
      )
    )

### Request syntax

    svc$put_configuration_aggregator(
      ConfigurationAggregatorName = "string",
      AccountAggregationSources = list(
        list(
          AccountIds = list(
            "string"
          ),
          AllAwsRegions = TRUE|FALSE,
          AwsRegions = list(
            "string"
          )
        )
      ),
      OrganizationAggregationSource = list(
        RoleArn = "string",
        AwsRegions = list(
          "string"
        ),
        AllAwsRegions = TRUE|FALSE
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
