<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_available_patches</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all patches eligible to be included in a patch baseline

### Description

Lists all patches eligible to be included in a patch baseline.

### Usage

    ssm_describe_available_patches(Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_available_patches_:_Filters">Filters</code></td>
<td><p>Each element in the array is a structure containing a key-value
pair.</p>
<p><strong>Windows Server</strong></p>
<p>Supported keys for Windows Server managed node patches include the
following:</p>
<ul>
<li><p><strong><code>PATCH_SET</code></strong></p>
<p>Sample values: <code>OS</code> | <code>APPLICATION</code></p></li>
<li><p><strong><code>PRODUCT</code></strong></p>
<p>Sample values: <code>WindowsServer2012</code> | <code
style="white-space: pre;">⁠Office 2010⁠</code> |
<code>MicrosoftDefenderAntivirus</code></p></li>
<li><p><strong><code>PRODUCT_FAMILY</code></strong></p>
<p>Sample values: <code>Windows</code> | <code>Office</code></p></li>
<li><p><strong><code>MSRC_SEVERITY</code></strong></p>
<p>Sample values: <code>ServicePacks</code> | <code>Important</code> |
<code>Moderate</code></p></li>
<li><p><strong><code>CLASSIFICATION</code></strong></p>
<p>Sample values: <code>ServicePacks</code> |
<code>SecurityUpdates</code> | <code>DefinitionUpdates</code></p></li>
<li><p><strong><code>PATCH_ID</code></strong></p>
<p>Sample values: <code>KB123456</code> |
<code>KB4516046</code></p></li>
</ul>
<p><strong>Linux</strong></p>
<p>When specifying filters for Linux patches, you must specify a
key-pair for <code>PRODUCT</code>. For example, using the Command Line
Interface (CLI), the following command fails:</p>
<p><code
style="white-space: pre;">⁠aws ssm describe-available-patches --filters Key=CVE_ID,Values=CVE-2018-3615⁠</code></p>
<p>However, the following command succeeds:</p>
<p><code
style="white-space: pre;">⁠aws ssm describe-available-patches --filters Key=PRODUCT,Values=AmazonLinux2018.03 Key=CVE_ID,Values=CVE-2018-3615⁠</code></p>
<p>Supported keys for Linux managed node patches include the
following:</p>
<ul>
<li><p><strong><code>PRODUCT</code></strong></p>
<p>Sample values: <code>AmazonLinux2018.03</code> |
<code>AmazonLinux2.0</code></p></li>
<li><p><strong><code>NAME</code></strong></p>
<p>Sample values: <code>kernel-headers</code> |
<code>samba-python</code> | <code>php</code></p></li>
<li><p><strong><code>SEVERITY</code></strong></p>
<p>Sample values: <code>Critical</code> | <code>Important</code> |
<code>Medium</code> | <code>Low</code></p></li>
<li><p><strong><code>EPOCH</code></strong></p>
<p>Sample values: <code>0</code> | <code>1</code></p></li>
<li><p><strong><code>VERSION</code></strong></p>
<p>Sample values: <code style="white-space: pre;">⁠78.6.1⁠</code> | <code
style="white-space: pre;">⁠4.10.16⁠</code></p></li>
<li><p><strong><code>RELEASE</code></strong></p>
<p>Sample values: <code style="white-space: pre;">⁠9.56.amzn1⁠</code> |
<code style="white-space: pre;">⁠1.amzn2⁠</code></p></li>
<li><p><strong><code>ARCH</code></strong></p>
<p>Sample values: <code>i686</code> | <code>x86_64</code></p></li>
<li><p><strong><code>REPOSITORY</code></strong></p>
<p>Sample values: <code>Core</code> | <code>Updates</code></p></li>
<li><p><strong><code>ADVISORY_ID</code></strong></p>
<p>Sample values: <code>ALAS-2018-1058</code> |
<code>ALAS2-2021-1594</code></p></li>
<li><p><strong><code>CVE_ID</code></strong></p>
<p>Sample values: <code>CVE-2018-3615</code> |
<code>CVE-2020-1472</code></p></li>
<li><p><strong><code>BUGZILLA_ID</code></strong></p>
<p>Sample values: <code>1463241</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_available_patches_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of patches to return (per page).</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_available_patches_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Patches = list(
        list(
          Id = "string",
          ReleaseDate = as.POSIXct(
            "2015-01-01"
          ),
          Title = "string",
          Description = "string",
          ContentUrl = "string",
          Vendor = "string",
          ProductFamily = "string",
          Product = "string",
          Classification = "string",
          MsrcSeverity = "string",
          KbNumber = "string",
          MsrcNumber = "string",
          Language = "string",
          AdvisoryIds = list(
            "string"
          ),
          BugzillaIds = list(
            "string"
          ),
          CVEIds = list(
            "string"
          ),
          Name = "string",
          Epoch = 123,
          Version = "string",
          Release = "string",
          Arch = "string",
          Severity = "string",
          Repository = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_available_patches(
      Filters = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
