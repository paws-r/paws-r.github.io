<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_list_auto_scaling_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of active App Runner automatic scaling configurations in your Amazon Web Services account

### Description

Returns a list of active App Runner automatic scaling configurations in
your Amazon Web Services account. You can query the revisions for a
specific configuration name or the revisions for all active
configurations in your account. You can optionally query only the latest
revision of each requested name.

To retrieve a full description of a particular configuration revision,
call and provide one of the ARNs returned by
`list_auto_scaling_configurations`.

### Usage

    apprunner_list_auto_scaling_configurations(AutoScalingConfigurationName,
      LatestOnly, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_list_auto_scaling_configurations_:_AutoScalingConfigurationName">AutoScalingConfigurationName</code></td>
<td><p>The name of the App Runner auto scaling configuration that you
want to list. If specified, App Runner lists revisions that share this
name. If not specified, App Runner returns revisions of all active
configurations.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_list_auto_scaling_configurations_:_LatestOnly">LatestOnly</code></td>
<td><p>Set to <code>true</code> to list only the latest revision for
each requested configuration name.</p>
<p>Set to <code>false</code> to list all revisions for each requested
configuration name.</p>
<p>Default: <code>true</code></p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_list_auto_scaling_configurations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to include in each response (result
page). It's used for a paginated request.</p>
<p>If you don't specify <code>MaxResults</code>, the request retrieves
all available results in a single response.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_list_auto_scaling_configurations_:_NextToken">NextToken</code></td>
<td><p>A token from a previous result page. It's used for a paginated
request. The request retrieves the next result page. All other parameter
values must be identical to the ones that are specified in the initial
request.</p>
<p>If you don't specify <code>NextToken</code>, the request retrieves
the first result page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutoScalingConfigurationSummaryList = list(
        list(
          AutoScalingConfigurationArn = "string",
          AutoScalingConfigurationName = "string",
          AutoScalingConfigurationRevision = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_auto_scaling_configurations(
      AutoScalingConfigurationName = "string",
      LatestOnly = TRUE|FALSE,
      MaxResults = 123,
      NextToken = "string"
    )
