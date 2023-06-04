<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_default_patch_baseline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the default patch baseline

### Description

Retrieves the default patch baseline. Amazon Web Services Systems
Manager supports creating multiple default patch baselines. For example,
you can create a default patch baseline for each operating system.

If you don't specify an operating system value, the default patch
baseline for Windows is returned.

### Usage

    ssm_get_default_patch_baseline(OperatingSystem)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_get_default_patch_baseline_:_OperatingSystem">OperatingSystem</code></td>
<td><p>Returns the default patch baseline for the specified operating
system.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BaselineId = "string",
      OperatingSystem = "WINDOWS"|"AMAZON_LINUX"|"AMAZON_LINUX_2"|"AMAZON_LINUX_2022"|"UBUNTU"|"REDHAT_ENTERPRISE_LINUX"|"SUSE"|"CENTOS"|"ORACLE_LINUX"|"DEBIAN"|"MACOS"|"RASPBIAN"|"ROCKY_LINUX"|"ALMA_LINUX"|"AMAZON_LINUX_2023"
    )

### Request syntax

    svc$get_default_patch_baseline(
      OperatingSystem = "WINDOWS"|"AMAZON_LINUX"|"AMAZON_LINUX_2"|"AMAZON_LINUX_2022"|"UBUNTU"|"REDHAT_ENTERPRISE_LINUX"|"SUSE"|"CENTOS"|"ORACLE_LINUX"|"DEBIAN"|"MACOS"|"RASPBIAN"|"ROCKY_LINUX"|"ALMA_LINUX"|"AMAZON_LINUX_2023"
    )
