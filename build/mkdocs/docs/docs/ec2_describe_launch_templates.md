<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_launch_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more launch templates

### Description

Describes one or more launch templates.

### Usage

    ec2_describe_launch_templates(DryRun, LaunchTemplateIds,
      LaunchTemplateNames, Filters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_launch_templates_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_launch_templates_:_LaunchTemplateIds">LaunchTemplateIds</code></td>
<td><p>One or more launch template IDs.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_launch_templates_:_LaunchTemplateNames">LaunchTemplateNames</code></td>
<td><p>One or more launch template names.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_launch_templates_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>create-time</code> - The time the launch template was
created.</p></li>
<li><p><code>launch-template-name</code> - The name of the launch
template.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_launch_templates_:_NextToken">NextToken</code></td>
<td><p>The token to request the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_launch_templates_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single call. To
retrieve the remaining results, make another call with the returned
<code>NextToken</code> value. This value can be between 1 and
200.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LaunchTemplates = list(
        list(
          LaunchTemplateId = "string",
          LaunchTemplateName = "string",
          CreateTime = as.POSIXct(
            "2015-01-01"
          ),
          CreatedBy = "string",
          DefaultVersionNumber = 123,
          LatestVersionNumber = 123,
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_launch_templates(
      DryRun = TRUE|FALSE,
      LaunchTemplateIds = list(
        "string"
      ),
      LaunchTemplateNames = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # This example describes the specified launch template.
    svc$describe_launch_templates(
      LaunchTemplateIds = list(
        "lt-01238c059e3466abc"
      )
    )

    ## End(Not run)
