<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_put_block_public_access_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates an Amazon EMR block public access configuration for your Amazon Web Services account in the current Region

### Description

Creates or updates an Amazon EMR block public access configuration for
your Amazon Web Services account in the current Region. For more
information see [Configure Block Public Access for Amazon
EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/) in the
*Amazon EMR Management Guide*.

### Usage

    emr_put_block_public_access_configuration(
      BlockPublicAccessConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_put_block_public_access_configuration_:_BlockPublicAccessConfiguration">BlockPublicAccessConfiguration</code></td>
<td><p>[required] A configuration for Amazon EMR block public access.
The configuration applies to all clusters created in your account for
the current Region. The configuration specifies whether block public
access is enabled. If block public access is enabled, security groups
associated with the cluster cannot have rules that allow inbound traffic
from 0.0.0.0/0 or ::/0 on a port, unless the port is specified as an
exception using <code>PermittedPublicSecurityGroupRuleRanges</code> in
the <code>BlockPublicAccessConfiguration</code>. By default, Port 22
(SSH) is an exception, and public access is allowed on this port. You
can change this by updating <code>BlockPublicSecurityGroupRules</code>
to remove the exception.</p>
<p>For accounts that created clusters in a Region before November 25,
2019, block public access is disabled by default in that Region. To use
this feature, you must manually enable and configure it. For accounts
that did not create an Amazon EMR cluster in a Region before this date,
block public access is enabled by default in that Region.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_block_public_access_configuration(
      BlockPublicAccessConfiguration = list(
        BlockPublicSecurityGroupRules = TRUE|FALSE,
        PermittedPublicSecurityGroupRuleRanges = list(
          list(
            MinRange = 123,
            MaxRange = 123
          )
        )
      )
    )
