<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_list_platform_branches</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the platform branches available for your account in an AWS Region

### Description

Lists the platform branches available for your account in an AWS Region.
Provides summary information about each platform branch.

For definitions of platform branch and other platform-related terms, see
[AWS Elastic Beanstalk Platforms
Glossary](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html).

### Usage

    elasticbeanstalk_list_platform_branches(Filters, MaxRecords, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_list_platform_branches_:_Filters">Filters</code></td>
<td><p>Criteria for restricting the resulting list of platform branches.
The filter is evaluated as a logical conjunction (AND) of the separate
<code>SearchFilter</code> terms.</p>
<p>The following list shows valid attribute values for each of the
<code>SearchFilter</code> terms. Most operators take a single value. The
<code style="white-space: pre;">⁠in⁠</code> and <code>not_in</code>
operators can take multiple values.</p>
<ul>
<li><p><code>Attribute = BranchName</code>:</p>
<ul>
<li><p><code>Operator</code>: <code>=</code> | <code>!=</code> |
<code>begins_with</code> | <code>ends_with</code> |
<code>contains</code> | <code style="white-space: pre;">⁠in⁠</code> |
<code>not_in</code></p></li>
</ul></li>
<li><p><code>Attribute = LifecycleState</code>:</p>
<ul>
<li><p><code>Operator</code>: <code>=</code> | <code>!=</code> | <code
style="white-space: pre;">⁠in⁠</code> | <code>not_in</code></p></li>
<li><p><code>Values</code>: <code>beta</code> | <code>supported</code> |
<code>deprecated</code> | <code>retired</code></p></li>
</ul></li>
<li><p><code>Attribute = PlatformName</code>:</p>
<ul>
<li><p><code>Operator</code>: <code>=</code> | <code>!=</code> |
<code>begins_with</code> | <code>ends_with</code> |
<code>contains</code> | <code style="white-space: pre;">⁠in⁠</code> |
<code>not_in</code></p></li>
</ul></li>
<li><p><code>Attribute = TierType</code>:</p>
<ul>
<li><p><code>Operator</code>: <code>=</code> | <code>!=</code></p></li>
<li><p><code>Values</code>: <code>WebServer/Standard</code> |
<code>Worker/SQS/HTTP</code></p></li>
</ul></li>
</ul>
<p>Array size: limited to 10 <code>SearchFilter</code> objects.</p>
<p>Within each <code>SearchFilter</code> item, the <code>Values</code>
array is limited to 10 items.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_list_platform_branches_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of platform branch values returned in one
call.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_list_platform_branches_:_NextToken">NextToken</code></td>
<td><p>For a paginated request. Specify a token from a previous response
page to retrieve the next response page. All other parameter values must
be identical to the ones specified in the initial request.</p>
<p>If no <code>NextToken</code> is specified, the first page is
retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PlatformBranchSummaryList = list(
        list(
          PlatformName = "string",
          BranchName = "string",
          LifecycleState = "string",
          BranchOrder = 123,
          SupportedTierList = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_platform_branches(
      Filters = list(
        list(
          Attribute = "string",
          Operator = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxRecords = 123,
      NextToken = "string"
    )
