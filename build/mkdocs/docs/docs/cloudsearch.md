<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon CloudSearch

### Description

Amazon CloudSearch Configuration Service

You use the Amazon CloudSearch configuration service to create,
configure, and manage search domains. Configuration service requests are
submitted using the AWS Query protocol. AWS Query requests are HTTP or
HTTPS requests submitted via HTTP GET or POST with a query parameter
named Action.

The endpoint for configuration service requests is region-specific:
cloudsearch.*region*.amazonaws.com. For example,
cloudsearch.us-east-1.amazonaws.com. For a current list of supported
regions and endpoints, see <a
href="https://docs.aws.amazon.com/general/latest/gr/rande.html#cloudsearch_region"
target="_blank">Regions and Endpoints</a>.

### Usage

    cloudsearch(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudsearch_:_config">config</code></td>
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

    svc <- cloudsearch(
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
<td style="text-align: left;"><a href="../cloudsearch_build_suggesters/"> build_suggesters </a></td>
<td style="text-align: left;">Indexes the search suggestions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudsearch_create_domain/"> create_domain </a></td>
<td style="text-align: left;">Creates a new search domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudsearch_define_analysis_scheme/"> define_analysis_scheme </a></td>
<td style="text-align: left;">Configures an analysis scheme that can be
applied to a text or text-array field to define language-specific text
processing options</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudsearch_define_expression/"> define_expression </a></td>
<td style="text-align: left;">Configures an Expression for the search
domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudsearch_define_index_field/"> define_index_field </a></td>
<td style="text-align: left;">Configures an IndexField for the search
domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudsearch_define_suggester/"> define_suggester </a></td>
<td style="text-align: left;">Configures a suggester for a domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudsearch_delete_analysis_scheme/"> delete_analysis_scheme </a></td>
<td style="text-align: left;">Deletes an analysis scheme</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudsearch_delete_domain/"> delete_domain </a></td>
<td style="text-align: left;">Permanently deletes a search domain and
all of its data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudsearch_delete_expression/"> delete_expression </a></td>
<td style="text-align: left;">Removes an Expression from the search
domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudsearch_delete_index_field/"> delete_index_field </a></td>
<td style="text-align: left;">Removes an IndexField from the search
domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudsearch_delete_suggester/"> delete_suggester </a></td>
<td style="text-align: left;">Deletes a suggester</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudsearch_describe_analysis_schemes/"> describe_analysis_schemes </a></td>
<td style="text-align: left;">Gets the analysis schemes configured for a
domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudsearch_describe_availability_options/"> describe_availability_options </a></td>
<td style="text-align: left;">Gets the availability options configured
for a domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudsearch_describe_domain_endpoint_options/"> describe_domain_endpoint_options </a></td>
<td style="text-align: left;">Returns the domain's endpoint options,
specifically whether all requests to the domain must arrive over
HTTPS</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudsearch_describe_domains/"> describe_domains </a></td>
<td style="text-align: left;">Gets information about the search domains
owned by this account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudsearch_describe_expressions/"> describe_expressions </a></td>
<td style="text-align: left;">Gets the expressions configured for the
search domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudsearch_describe_index_fields/"> describe_index_fields </a></td>
<td style="text-align: left;">Gets information about the index fields
configured for the search domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudsearch_describe_scaling_parameters/"> describe_scaling_parameters </a></td>
<td style="text-align: left;">Gets the scaling parameters configured for
a domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudsearch_describe_service_access_policies/"> describe_service_access_policies </a></td>
<td style="text-align: left;">Gets information about the access policies
that control access to the domain's document and search endpoints</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudsearch_describe_suggesters/"> describe_suggesters </a></td>
<td style="text-align: left;">Gets the suggesters configured for a
domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudsearch_index_documents/"> index_documents </a></td>
<td style="text-align: left;">Tells the search domain to start indexing
its documents using the latest indexing options</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudsearch_list_domain_names/"> list_domain_names </a></td>
<td style="text-align: left;">Lists all search domains owned by an
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudsearch_update_availability_options/"> update_availability_options </a></td>
<td style="text-align: left;">Configures the availability options for a
domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudsearch_update_domain_endpoint_options/"> update_domain_endpoint_options </a></td>
<td style="text-align: left;">Updates the domain's endpoint options,
specifically whether all requests to the domain must arrive over
HTTPS</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../cloudsearch_update_scaling_parameters/"> update_scaling_parameters </a></td>
<td style="text-align: left;">Configures scaling parameters for a
domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../cloudsearch_update_service_access_policies/"> update_service_access_policies </a></td>
<td style="text-align: left;">Configures the access rules that control
access to the domain's document and search endpoints</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- cloudsearch()
    svc$build_suggesters(
      Foo = 123
    )

    ## End(Not run)
