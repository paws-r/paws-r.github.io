<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_list_server_certificates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the server certificates stored in IAM that have the specified path prefix

### Description

Lists the server certificates stored in IAM that have the specified path
prefix. If none exist, the operation returns an empty list.

You can paginate the results using the `MaxItems` and `Marker`
parameters.

For more information about working with server certificates, see
[Working with server
certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
in the *IAM User Guide*. This topic also includes a list of Amazon Web
Services services that can use the server certificates that you manage
with IAM.

IAM resource-listing operations return a subset of the available
attributes for the resource. For example, this operation does not return
tags, even though they are an attribute of the returned object. To view
all of the information for a servercertificate, see
`get_server_certificate`.

### Usage

    iam_list_server_certificates(PathPrefix, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_list_server_certificates_:_PathPrefix">PathPrefix</code></td>
<td><p>The path prefix for filtering the results. For example: <code
style="white-space: pre;">⁠/company/servercerts⁠</code> would get all
server certificates for which the path starts with <code
style="white-space: pre;">⁠/company/servercerts⁠</code>.</p>
<p>This parameter is optional. If it is not included, it defaults to a
slash (/), listing all server certificates. This parameter allows
(through its <a href="https://en.wikipedia.org/wiki/Regex">regex
pattern</a>) a string of characters consisting of either a forward slash
(/) by itself or a string that must begin and end with forward slashes.
In addition, it can contain any ASCII character from the !
(<code>U+0021</code>) through the DEL character (<code
style="white-space: pre;">⁠U+007F⁠</code>), including most punctuation
characters, digits, and upper and lowercased letters.</p></td>
</tr>
<tr class="even">
<td><code id="iam_list_server_certificates_:_Marker">Marker</code></td>
<td><p>Use this parameter only when paginating results and only after
you receive a response indicating that the results are truncated. Set it
to the value of the <code>Marker</code> element in the response that you
received to indicate where the next call should start.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_list_server_certificates_:_MaxItems">MaxItems</code></td>
<td><p>Use this only when paginating results to indicate the maximum
number of items you want in the response. If additional items exist
beyond the maximum you specify, the <code>IsTruncated</code> response
element is <code>true</code>.</p>
<p>If you do not include this parameter, the number of items defaults to
100. Note that IAM might return fewer results, even when there are more
results available. In that case, the <code>IsTruncated</code> response
element returns <code>true</code>, and <code>Marker</code> contains a
value to include in the subsequent call that tells the service where to
continue from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServerCertificateMetadataList = list(
        list(
          Path = "string",
          ServerCertificateName = "string",
          ServerCertificateId = "string",
          Arn = "string",
          UploadDate = as.POSIXct(
            "2015-01-01"
          ),
          Expiration = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      IsTruncated = TRUE|FALSE,
      Marker = "string"
    )

### Request syntax

    svc$list_server_certificates(
      PathPrefix = "string",
      Marker = "string",
      MaxItems = 123
    )
