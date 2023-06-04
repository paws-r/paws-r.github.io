<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_delete_certificate_authority</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a private certificate authority (CA)

### Description

Deletes a private certificate authority (CA). You must provide the
Amazon Resource Name (ARN) of the private CA that you want to delete.
You can find the ARN by calling the `list_certificate_authorities`
action.

Deleting a CA will invalidate other CAs and certificates below it in
your CA hierarchy.

Before you can delete a CA that you have created and activated, you must
disable it. To do this, call the `update_certificate_authority` action
and set the **CertificateAuthorityStatus** parameter to `DISABLED`.

Additionally, you can delete a CA if you are waiting for it to be
created (that is, the status of the CA is `CREATING`). You can also
delete it if the CA has been created but you haven't yet imported the
signed certificate into Amazon Web Services Private CA (that is, the
status of the CA is `PENDING_CERTIFICATE`).

When you successfully call `delete_certificate_authority`, the CA's
status changes to `DELETED`. However, the CA won't be permanently
deleted until the restoration period has passed. By default, if you do
not set the `PermanentDeletionTimeInDays` parameter, the CA remains
restorable for 30 days. You can set the parameter from 7 to 30 days. The
`describe_certificate_authority` action returns the time remaining in
the restoration window of a private CA in the `DELETED` state. To
restore an eligible CA, call the `restore_certificate_authority` action.

### Usage

    acmpca_delete_certificate_authority(CertificateAuthorityArn,
      PermanentDeletionTimeInDays)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_delete_certificate_authority_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that was returned when
you called <code>create_certificate_authority</code>. This must have the
following form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 </code>.</p></td>
</tr>
<tr class="even">
<td><code
id="acmpca_delete_certificate_authority_:_PermanentDeletionTimeInDays">PermanentDeletionTimeInDays</code></td>
<td><p>The number of days to make a CA restorable after it has been
deleted. This can be anywhere from 7 to 30 days, with 30 being the
default.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_certificate_authority(
      CertificateAuthorityArn = "string",
      PermanentDeletionTimeInDays = 123
    )
