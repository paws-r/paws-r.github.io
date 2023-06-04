<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_patch_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all patch groups that have been registered with patch baselines

### Description

Lists all patch groups that have been registered with patch baselines.

### Usage

    ssm_describe_patch_groups(MaxResults, Filters, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_patch_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of patch groups to return (per page).</p></td>
</tr>
<tr class="even">
<td><code id="ssm_describe_patch_groups_:_Filters">Filters</code></td>
<td><p>Each element in the array is a structure containing a key-value
pair.</p>
<p>Supported keys for <code>describe_patch_groups</code> include the
following:</p>
<ul>
<li><p><strong><code>NAME_PREFIX</code></strong></p>
<p>Sample values: <code style="white-space: pre;">⁠AWS-⁠</code> | <code
style="white-space: pre;">⁠My-⁠</code>.</p></li>
<li><p><strong><code>OPERATING_SYSTEM</code></strong></p>
<p>Sample values: <code>AMAZON_LINUX</code> | <code>SUSE</code> |
<code>WINDOWS</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_patch_groups_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Mappings = list(
        list(
          PatchGroup = "string",
          BaselineIdentity = list(
            BaselineId = "string",
            BaselineName = "string",
            OperatingSystem = "WINDOWS"|"AMAZON_LINUX"|"AMAZON_LINUX_2"|"AMAZON_LINUX_2022"|"UBUNTU"|"REDHAT_ENTERPRISE_LINUX"|"SUSE"|"CENTOS"|"ORACLE_LINUX"|"DEBIAN"|"MACOS"|"RASPBIAN"|"ROCKY_LINUX"|"ALMA_LINUX"|"AMAZON_LINUX_2023",
            BaselineDescription = "string",
            DefaultBaseline = TRUE|FALSE
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_patch_groups(
      MaxResults = 123,
      Filters = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )
