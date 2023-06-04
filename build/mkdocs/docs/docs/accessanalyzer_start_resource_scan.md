<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_start_resource_scan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Immediately starts a scan of the policies applied to the specified resource

### Description

Immediately starts a scan of the policies applied to the specified
resource.

### Usage

    accessanalyzer_start_resource_scan(analyzerArn, resourceArn,
      resourceOwnerAccount)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_start_resource_scan_:_analyzerArn">analyzerArn</code></td>
<td><p>[required] The <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN
of the analyzer</a> to use to scan the policies applied to the specified
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_start_resource_scan_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the resource to scan.</p></td>
</tr>
<tr class="odd">
<td><code
id="accessanalyzer_start_resource_scan_:_resourceOwnerAccount">resourceOwnerAccount</code></td>
<td><p>The Amazon Web Services account ID that owns the resource. For
most Amazon Web Services resources, the owning account is the account in
which the resource was created.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_resource_scan(
      analyzerArn = "string",
      resourceArn = "string",
      resourceOwnerAccount = "string"
    )
