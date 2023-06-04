<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_restore_certificate_authority</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores a certificate authority (CA) that is in the DELETED state

### Description

Restores a certificate authority (CA) that is in the `DELETED` state.
You can restore a CA during the period that you defined in the
**PermanentDeletionTimeInDays** parameter of the
`delete_certificate_authority` action. Currently, you can specify 7 to
30 days. If you did not specify a **PermanentDeletionTimeInDays** value,
by default you can restore the CA at any time in a 30 day period. You
can check the time remaining in the restoration period of a private CA
in the `DELETED` state by calling the `describe_certificate_authority`
or `list_certificate_authorities` actions. The status of a restored CA
is set to its pre-deletion status when the
**RestoreCertificateAuthority** action returns. To change its status to
`ACTIVE`, call the `update_certificate_authority` action. If the private
CA was in the `PENDING_CERTIFICATE` state at deletion, you must use the
`import_certificate_authority_certificate` action to import a
certificate authority into the private CA before it can be activated.
You cannot restore a CA after the restoration period has ended.

### Usage

    acmpca_restore_certificate_authority(CertificateAuthorityArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_restore_certificate_authority_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that was returned when
you called the <code>create_certificate_authority</code> action. This
must be of the form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 </code></p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$restore_certificate_authority(
      CertificateAuthorityArn = "string"
    )
