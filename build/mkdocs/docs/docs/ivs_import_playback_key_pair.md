<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_import_playback_key_pair</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports the public portion of a new key pair and returns its arn and fingerprint

### Description

Imports the public portion of a new key pair and returns its `arn` and
`fingerprint`. The `privateKey` can then be used to generate viewer
authorization tokens, to grant viewers access to private channels. For
more information, see [Setting Up Private
Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
in the *Amazon IVS User Guide*.

### Usage

    ivs_import_playback_key_pair(name, publicKeyMaterial, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_import_playback_key_pair_:_name">name</code></td>
<td><p>Playback-key-pair name. The value does not need to be
unique.</p></td>
</tr>
<tr class="even">
<td><code
id="ivs_import_playback_key_pair_:_publicKeyMaterial">publicKeyMaterial</code></td>
<td><p>[required] The public portion of a customer-generated key
pair.</p></td>
</tr>
<tr class="odd">
<td><code id="ivs_import_playback_key_pair_:_tags">tags</code></td>
<td><p>Any tags provided with the request are added to the playback key
pair tags. See <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a> for more information, including
restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS has no service-specific constraints beyond
what is documented there.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      keyPair = list(
        arn = "string",
        fingerprint = "string",
        name = "string",
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$import_playback_key_pair(
      name = "string",
      publicKeyMaterial = "string",
      tags = list(
        "string"
      )
    )
