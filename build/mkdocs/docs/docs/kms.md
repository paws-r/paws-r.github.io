<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Key Management Service

### Description

Key Management Service

Key Management Service (KMS) is an encryption and key management web
service. This guide describes the KMS operations that you can call
programmatically. For general information about KMS, see the [*Key
Management Service Developer
Guide*](https://docs.aws.amazon.com/kms/latest/developerguide/) .

KMS has replaced the term *customer master key (CMK)* with *KMS key* and
*KMS key*. The concept has not changed. To prevent breaking changes, KMS
is keeping some variations of this term.

Amazon Web Services provides SDKs that consist of libraries and sample
code for various programming languages and platforms (Java, Ruby, .Net,
macOS, Android, etc.). The SDKs provide a convenient way to create
programmatic access to KMS and other Amazon Web Services services. For
example, the SDKs take care of tasks such as signing requests (see
below), managing errors, and retrying requests automatically. For more
information about the Amazon Web Services SDKs, including how to
download and install them, see [Tools for Amazon Web
Services](https://aws.amazon.com/developer/tools/).

We recommend that you use the Amazon Web Services SDKs to make
programmatic API calls to KMS.

If you need to use FIPS 140-2 validated cryptographic modules when
communicating with Amazon Web Services, use the FIPS endpoint in your
preferred Amazon Web Services Region. For more information about the
available FIPS endpoints, see [Service
endpoints](https://docs.aws.amazon.com/general/latest/gr/kms.html#kms_region)
in the Key Management Service topic of the *Amazon Web Services General
Reference*.

All KMS API calls must be signed and be transmitted using Transport
Layer Security (TLS). KMS recommends you always use the latest supported
TLS version. Clients must also support cipher suites with Perfect
Forward Secrecy (PFS) such as Ephemeral Diffie-Hellman (DHE) or Elliptic
Curve Ephemeral Diffie-Hellman (ECDHE). Most modern systems such as Java
7 and later support these modes.

**Signing Requests**

Requests must be signed using an access key ID and a secret access key.
We strongly recommend that you do not use your Amazon Web Services
account root access key ID and secret access key for everyday work. You
can use the access key ID and secret access key for an IAM user or you
can use the Security Token Service (STS) to generate temporary security
credentials and use those to sign requests.

All KMS requests must be signed with [Signature Version
4](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html).

**Logging API Requests**

KMS supports CloudTrail, a service that logs Amazon Web Services API
calls and related events for your Amazon Web Services account and
delivers them to an Amazon S3 bucket that you specify. By using the
information collected by CloudTrail, you can determine what requests
were made to KMS, who made the request, when it was made, and so on. To
learn more about CloudTrail, including how to turn it on and find your
log files, see the [CloudTrail User
Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/).

**Additional Resources**

For more information about credentials and request signing, see the
following:

-   [Amazon Web Services Security
    Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/security-creds.html) -
    This topic provides general information about the types of
    credentials used to access Amazon Web Services.

-   [Temporary Security
    Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html) -
    This section of the *IAM User Guide* describes how to create and use
    temporary security credentials.

-   [Signature Version 4 Signing
    Process](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html) -
    This set of topics walks you through the process of signing a
    request using an access key ID and a secret access key.

**Commonly Used API Operations**

Of the API operations discussed in this guide, the following will prove
the most useful for most applications. You will likely perform
operations other than these, such as creating keys and assigning
policies, by using the console.

-   `encrypt`

-   `decrypt`

-   `generate_data_key`

-   `generate_data_key_without_plaintext`

### Usage

    kms(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- kms(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_cancel_key_deletion/"> cancel_key_deletion </a></td>
<td style="text-align: left;">Cancels the deletion of a KMS key</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_connect_custom_key_store/"> connect_custom_key_store </a></td>
<td style="text-align: left;">Connects or reconnects a custom key store
to its backing key store</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_create_alias/"> create_alias </a></td>
<td style="text-align: left;">Creates a friendly name for a KMS key</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_create_custom_key_store/"> create_custom_key_store </a></td>
<td style="text-align: left;">Creates a custom key store backed by a key
store that you own and manage</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_create_grant/"> create_grant </a></td>
<td style="text-align: left;">Adds a grant to a KMS key</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_create_key/"> create_key </a></td>
<td style="text-align: left;">Creates a unique customer managed KMS key
in your Amazon Web Services account and Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_decrypt/"> decrypt </a></td>
<td style="text-align: left;">Decrypts ciphertext that was encrypted by
a KMS key using any of the following operations:</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_delete_alias/"> delete_alias </a></td>
<td style="text-align: left;">Deletes the specified alias</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_delete_custom_key_store/"> delete_custom_key_store </a></td>
<td style="text-align: left;">Deletes a custom key store</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_delete_imported_key_material/"> delete_imported_key_material </a></td>
<td style="text-align: left;">Deletes key material that you previously
imported</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_describe_custom_key_stores/"> describe_custom_key_stores </a></td>
<td style="text-align: left;">Gets information about custom key stores
in the account and Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_describe_key/"> describe_key </a></td>
<td style="text-align: left;">Provides detailed information about a KMS
key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_disable_key/"> disable_key </a></td>
<td style="text-align: left;">Sets the state of a KMS key to
disabled</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_disable_key_rotation/"> disable_key_rotation </a></td>
<td style="text-align: left;">Disables automatic rotation of the key
material of the specified symmetric encryption KMS key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_disconnect_custom_key_store/"> disconnect_custom_key_store </a></td>
<td style="text-align: left;">Disconnects the custom key store from its
backing key store</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_enable_key/"> enable_key </a></td>
<td style="text-align: left;">Sets the key state of a KMS key to
enabled</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_enable_key_rotation/"> enable_key_rotation </a></td>
<td style="text-align: left;">Enables automatic rotation of the key
material of the specified symmetric encryption KMS key</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_encrypt/"> encrypt </a></td>
<td style="text-align: left;">Encrypts plaintext of up to 4,096 bytes
using a KMS key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_generate_data_key/"> generate_data_key </a></td>
<td style="text-align: left;">Returns a unique symmetric data key for
use outside of KMS</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_generate_data_key_pair/"> generate_data_key_pair </a></td>
<td style="text-align: left;">Returns a unique asymmetric data key pair
for use outside of KMS</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../kms_generate_data_key_pair_without_plaintext/"> generate_data_key_pair_without_plaintext </a></td>
<td style="text-align: left;">Returns a unique asymmetric data key pair
for use outside of KMS</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_generate_data_key_without_plaintext/"> generate_data_key_without_plaintext </a></td>
<td style="text-align: left;">Returns a unique symmetric data key for
use outside of KMS</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_generate_mac/"> generate_mac </a></td>
<td style="text-align: left;">Generates a hash-based message
authentication code (HMAC) for a message using an HMAC KMS key and a MAC
algorithm that the key supports</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_generate_random/"> generate_random </a></td>
<td style="text-align: left;">Returns a random byte string that is
cryptographically secure</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_get_key_policy/"> get_key_policy </a></td>
<td style="text-align: left;">Gets a key policy attached to the
specified KMS key</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_get_key_rotation_status/"> get_key_rotation_status </a></td>
<td style="text-align: left;">Gets a Boolean value that indicates
whether automatic rotation of the key material is enabled for the
specified KMS key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_get_parameters_for_import/"> get_parameters_for_import </a></td>
<td style="text-align: left;">Returns the items you need to import key
material into a symmetric encryption KMS key</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_get_public_key/"> get_public_key </a></td>
<td style="text-align: left;">Returns the public key of an asymmetric
KMS key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_import_key_material/"> import_key_material </a></td>
<td style="text-align: left;">Imports key material into an existing
symmetric encryption KMS key that was created without key material</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_list_aliases/"> list_aliases </a></td>
<td style="text-align: left;">Gets a list of aliases in the caller's
Amazon Web Services account and region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_list_grants/"> list_grants </a></td>
<td style="text-align: left;">Gets a list of all grants for the
specified KMS key</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_list_key_policies/"> list_key_policies </a></td>
<td style="text-align: left;">Gets the names of the key policies that
are attached to a KMS key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_list_keys/"> list_keys </a></td>
<td style="text-align: left;">Gets a list of all KMS keys in the
caller's Amazon Web Services account and Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_list_resource_tags/"> list_resource_tags </a></td>
<td style="text-align: left;">Returns all tags on the specified KMS
key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_list_retirable_grants/"> list_retirable_grants </a></td>
<td style="text-align: left;">Returns information about all grants in
the Amazon Web Services account and Region that have the specified
retiring principal</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_put_key_policy/"> put_key_policy </a></td>
<td style="text-align: left;">Attaches a key policy to the specified KMS
key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_re_encrypt/"> re_encrypt </a></td>
<td style="text-align: left;">Decrypts ciphertext and then reencrypts it
entirely within KMS</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_replicate_key/"> replicate_key </a></td>
<td style="text-align: left;">Replicates a multi-Region key into the
specified Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_retire_grant/"> retire_grant </a></td>
<td style="text-align: left;">Deletes a grant</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_revoke_grant/"> revoke_grant </a></td>
<td style="text-align: left;">Deletes the specified grant</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_schedule_key_deletion/"> schedule_key_deletion </a></td>
<td style="text-align: left;">Schedules the deletion of a KMS key</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_sign/"> sign </a></td>
<td style="text-align: left;">Creates a digital signature for a message
or message digest by using the private key in an asymmetric signing KMS
key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds or edits tags on a customer managed
key</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes tags from a customer managed
key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_update_alias/"> update_alias </a></td>
<td style="text-align: left;">Associates an existing KMS alias with a
different KMS key</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_update_custom_key_store/"> update_custom_key_store </a></td>
<td style="text-align: left;">Changes the properties of a custom key
store</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_update_key_description/"> update_key_description </a></td>
<td style="text-align: left;">Updates the description of a KMS key</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_update_primary_region/"> update_primary_region </a></td>
<td style="text-align: left;">Changes the primary key of a multi-Region
key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../kms_verify/"> verify </a></td>
<td style="text-align: left;">Verifies a digital signature that was
generated by the Sign operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../kms_verify_mac/"> verify_mac </a></td>
<td style="text-align: left;">Verifies the hash-based message
authentication code (HMAC) for a specified message, HMAC KMS key, and
MAC algorithm</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- kms()
    # The following example cancels deletion of the specified KMS key.
    svc$cancel_key_deletion(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    ## End(Not run)
