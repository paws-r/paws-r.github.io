<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_patch_baseline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about a patch baseline

### Description

Retrieves information about a patch baseline.

### Usage

    ssm_get_patch_baseline(BaselineId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_get_patch_baseline_:_BaselineId">BaselineId</code></td>
<td><p>[required] The ID of the patch baseline to retrieve.</p>
<p>To retrieve information about an Amazon Web Services managed patch
baseline, specify the full Amazon Resource Name (ARN) of the baseline.
For example, for the baseline
<code>AWS-AmazonLinuxDefaultPatchBaseline</code>, specify <code
style="white-space: pre;">⁠arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0e392de35e7c563b7⁠</code>
instead of <code
style="white-space: pre;">⁠pb-0e392de35e7c563b7⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BaselineId = "string",
      Name = "string",
      OperatingSystem = "WINDOWS"|"AMAZON_LINUX"|"AMAZON_LINUX_2"|"AMAZON_LINUX_2022"|"UBUNTU"|"REDHAT_ENTERPRISE_LINUX"|"SUSE"|"CENTOS"|"ORACLE_LINUX"|"DEBIAN"|"MACOS"|"RASPBIAN"|"ROCKY_LINUX"|"ALMA_LINUX"|"AMAZON_LINUX_2023",
      GlobalFilters = list(
        PatchFilters = list(
          list(
            Key = "ARCH"|"ADVISORY_ID"|"BUGZILLA_ID"|"PATCH_SET"|"PRODUCT"|"PRODUCT_FAMILY"|"CLASSIFICATION"|"CVE_ID"|"EPOCH"|"MSRC_SEVERITY"|"NAME"|"PATCH_ID"|"SECTION"|"PRIORITY"|"REPOSITORY"|"RELEASE"|"SEVERITY"|"SECURITY"|"VERSION",
            Values = list(
              "string"
            )
          )
        )
      ),
      ApprovalRules = list(
        PatchRules = list(
          list(
            PatchFilterGroup = list(
              PatchFilters = list(
                list(
                  Key = "ARCH"|"ADVISORY_ID"|"BUGZILLA_ID"|"PATCH_SET"|"PRODUCT"|"PRODUCT_FAMILY"|"CLASSIFICATION"|"CVE_ID"|"EPOCH"|"MSRC_SEVERITY"|"NAME"|"PATCH_ID"|"SECTION"|"PRIORITY"|"REPOSITORY"|"RELEASE"|"SEVERITY"|"SECURITY"|"VERSION",
                  Values = list(
                    "string"
                  )
                )
              )
            ),
            ComplianceLevel = "CRITICAL"|"HIGH"|"MEDIUM"|"LOW"|"INFORMATIONAL"|"UNSPECIFIED",
            ApproveAfterDays = 123,
            ApproveUntilDate = "string",
            EnableNonSecurity = TRUE|FALSE
          )
        )
      ),
      ApprovedPatches = list(
        "string"
      ),
      ApprovedPatchesComplianceLevel = "CRITICAL"|"HIGH"|"MEDIUM"|"LOW"|"INFORMATIONAL"|"UNSPECIFIED",
      ApprovedPatchesEnableNonSecurity = TRUE|FALSE,
      RejectedPatches = list(
        "string"
      ),
      RejectedPatchesAction = "ALLOW_AS_DEPENDENCY"|"BLOCK",
      PatchGroups = list(
        "string"
      ),
      CreatedDate = as.POSIXct(
        "2015-01-01"
      ),
      ModifiedDate = as.POSIXct(
        "2015-01-01"
      ),
      Description = "string",
      Sources = list(
        list(
          Name = "string",
          Products = list(
            "string"
          ),
          Configuration = "string"
        )
      )
    )

### Request syntax

    svc$get_patch_baseline(
      BaselineId = "string"
    )
