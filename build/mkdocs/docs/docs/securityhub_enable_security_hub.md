<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_enable_security_hub</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables Security Hub for your account in the current Region or the Region you specify in the request

### Description

Enables Security Hub for your account in the current Region or the
Region you specify in the request.

When you enable Security Hub, you grant to Security Hub the permissions
necessary to gather findings from other services that are integrated
with Security Hub.

When you use the `enable_security_hub` operation to enable Security Hub,
you also automatically enable the following standards:

-   Center for Internet Security (CIS) Amazon Web Services Foundations
    Benchmark v1.2.0

-   Amazon Web Services Foundational Security Best Practices

Other standards are not automatically enabled.

To opt out of automatically enabled standards, set
`EnableDefaultStandards` to `false`.

After you enable Security Hub, to enable a standard, use the
`batch_enable_standards` operation. To disable a standard, use the
`batch_disable_standards` operation.

To learn more, see the [setup
information](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-settingup.html)
in the *Security Hub User Guide*.

### Usage

    securityhub_enable_security_hub(Tags, EnableDefaultStandards,
      ControlFindingGenerator)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="securityhub_enable_security_hub_:_Tags">Tags</code></td>
<td><p>The tags to add to the hub resource when you enable Security
Hub.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_enable_security_hub_:_EnableDefaultStandards">EnableDefaultStandards</code></td>
<td><p>Whether to enable the security standards that Security Hub has
designated as automatically enabled. If you do not provide a value for
<code>EnableDefaultStandards</code>, it is set to <code>true</code>. To
not enable the automatically enabled standards, set
<code>EnableDefaultStandards</code> to <code>false</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="securityhub_enable_security_hub_:_ControlFindingGenerator">ControlFindingGenerator</code></td>
<td><p>This field, used when enabling Security Hub, specifies whether
the calling account has consolidated control findings turned on. If the
value for this field is set to <code>SECURITY_CONTROL</code>, Security
Hub generates a single finding for a control check even when the check
applies to multiple enabled standards.</p>
<p>If the value for this field is set to <code>STANDARD_CONTROL</code>,
Security Hub generates separate findings for a control check when the
check applies to multiple enabled standards.</p>
<p>The value for this field in a member account matches the value in the
administrator account. For accounts that aren't part of an organization,
the default value of this field is <code>SECURITY_CONTROL</code> if you
enabled Security Hub on or after February 23, 2023.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_security_hub(
      Tags = list(
        "string"
      ),
      EnableDefaultStandards = TRUE|FALSE,
      ControlFindingGenerator = "STANDARD_CONTROL"|"SECURITY_CONTROL"
    )

### Examples

    ## Not run: 
    # The following example activates the Security Hub service in the
    # requesting AWS account. The service is activated in the current AWS
    # Region or the Region that you specify in the request. Some standards are
    # automatically turned on in your account unless you opt out. To determine
    # which standards are automatically turned on, see the Security Hub
    # documentation.
    svc$enable_security_hub(
      EnableDefaultStandards = TRUE,
      Tags = list(
        Department = "Security"
      )
    )

    ## End(Not run)
