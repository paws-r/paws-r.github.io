<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_effective_patches_for_patch_baseline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the current effective patches (the patch and the approval state) for the specified patch baseline

### Description

Retrieves the current effective patches (the patch and the approval
state) for the specified patch baseline. Applies to patch baselines for
Windows only.

### Usage

    ssm_describe_effective_patches_for_patch_baseline(BaselineId,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_effective_patches_for_patch_baseline_:_BaselineId">BaselineId</code></td>
<td><p>[required] The ID of the patch baseline to retrieve the effective
patches for.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_effective_patches_for_patch_baseline_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of patches to return (per page).</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_effective_patches_for_patch_baseline_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EffectivePatches = list(
        list(
          Patch = list(
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
          ),
          PatchStatus = list(
            DeploymentStatus = "APPROVED"|"PENDING_APPROVAL"|"EXPLICIT_APPROVED"|"EXPLICIT_REJECTED",
            ComplianceLevel = "CRITICAL"|"HIGH"|"MEDIUM"|"LOW"|"INFORMATIONAL"|"UNSPECIFIED",
            ApprovalDate = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_effective_patches_for_patch_baseline(
      BaselineId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
