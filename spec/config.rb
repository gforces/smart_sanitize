SmartSanitize.configure do |config|
  config.elements = [
    'a','abbr', 'acronym', 'address', 'area', 'b',  'basefont', 'bdo', 'big', 'blockquote',
    'body', 'br', 'button', 'caption', 'center', 'cite', 'code', 'col',
    'colgroup', 'dd', 'del', 'dfn', 'dir', 'div', 'dl', 'dt', 'em', 'font',
    'h1', 'h2', 'h3', 'h4',  'h5',  'h6', 'head', 'hr', 'i', 'img', 'ins',
    'isindex', 'kbd', 'label', 'legend', 'li', 'map', 'menu', 'nobr', 'noframes',
    'noscript', 'ol', 'optgroup', 'option', 'p', 'pre','q', 's', 'samp','select',
    'small', 'span', 'strike', 'strong', 'sub', 'sup', 'table', 'tbody', 'td',
    'tfoot', 'th', 'thead', 'title', 'tr', 'tt', 'u', 'ul', 'var', 'style']
  config.attributes = {
    'a' => ['href', 'title', 'hreflang', 'rel', 'rev', 'charset'],
    'area' => ['name', 'shape', 'coords', 'nohref', 'usemap'],
    'basefont' => ['size', 'color', 'face'],
    'blockquote' => ['cite'],
    'body' => ['background', 'text', 'link', 'vlink', 'alink'],
    'button' => ['name', 'value', 'type'],
    'col' => ['span', 'width'],
    'colgroup' => ['span', 'width'],
    'del' => ['cite', 'datetime'],
    'div' => ['class'],
    'font' => ['size', 'color', 'face'],
    'head' => ['profile'],
    'hr' => ['align', 'noshade', 'size', 'width'],
    'img' => ['align', 'alt', 'height', 'src', 'title', 'width'],
    'ins' => ['cite', 'datetime'],
    'isindex' => ['prompt'],
    'label' => ['for'],
    'legend' => ['align'],
    'map' => ['name'],
    'ol' => ['start', 'type', 'value', 'compact'],
    'q' => ['cite'],
    'select' => ['name', 'size', 'multiple'],
    'table' => ['summary', 'width'],
    'td' => ['abbr', 'axis', 'colspan', 'headers', 'height', 'nowrap', 'rowspan', 'scope', 'width', 'background'],
    'th' => ['abbr', 'axis', 'colspan', 'headers', 'height', 'nowrap', 'rowspan', 'scope', 'width', 'background'],
    'ul' => ['type'],
    'style' => ['type', 'media'],
    :all => ['class', 'id', 'style', 'alt', 'lang', 'title', 'bgcolor',
      'align', 'char', 'charoff', 'valign', 'frame', 'rules', 'border', 'cellspacing',
      'cellpadding', 'accesskey']

  }
  config.styles = ["azimuth", "background", "background-attachment", "background-color",
    "background-image", "background-position", "background-repeat", "border",
    "border-bottom", "border-bottom-color", "border-bottom-style", "border-bottom-width",
    "border-collapse", "border-color", "border-left", "border-left-color",
    "border-left-style", "border-left-width", "border-right", "border-right-color",
    "border-right-style", "border-right-width", "border-spacing", "border-style",
    "border-top", "border-top-color", "border-top-style", "border-top-width",
    "border-width", "bottom", "caption-side", "clear", "clip", "color", "content",
    "counter-increment", "counter-reset", "cue", "cue-after", "cue-before", "cursor",
    "direction", "display", "elevation", "empty-cells", "float", "font", "font-family",
    "font-size", "font-size-adjust", "font-stretch", "font-style", "font-variant",
    "font-weight", "height", "left", "letter-spacing", "line-height", "list-style",
    "list-style-image", "list-style-position", "list-style-type", "margin",
    "margin-bottom", "margin-left", "margin-right", "margin-top", "marker-offset",
    "marks", "max-height", "max-width", "min-height", "min-width", "orphans",
    "outline", "outline-color", "outline-style", "outline-width", "overflow",
    "padding", "padding-bottom", "padding-left", "padding-right", "padding-top",
    "page", "page-break-after", "page-break-before", "page-break-inside", "pause",
    "pause-after", "pause-before", "pitch", "pitch-range", "play-during", "quotes",
    "richness", "right", "size", "speak", "speak-header", "speak-numeral",
    "speak-punctuation", "speech-rate", "stress", "table-layout", "text-align",
    "text-decoration", "text-indent", "text-shadow", "text-transform", "top",
    "unicode-bidi", "vertical-align", "visibility", "voice-family", "volume",
    "white-space", "widows", "width", "word-spacing"]
  config.restricted_classes = ['ico', 'space', 'c','red','clear','clear0','clr','wide',
    'home', 'new', 'szukaj','rejestracja', 'wystaw','moje','pomoc','wyloguj',
    'login', 'thin-head', 'selected', 'text', 'alertRow','formRow','halfRow',
    'huge','label','info','required','more','back','data','nw','nb','vm','r',
    'wyroz1','wyroz2','wyroz3','DatePicker','DatePickerHdr','DatePickerHdrBtn',
    'DatePickerBtn','DatePickerBtnSelect','nicetitle', 'destination', 'big',
    'foto','mini', 'minic','box-head','small','box-head-a', 'box-inner-a',
    'box-head-b', 'box-head-cat', 'box-content', 'left-ban','grey','slogan',
    'potw-info','input-search','search-list','mmark','box-item','box-item-foto',
    'box-item-foto-mini','aukcja-summary','half-right','half-left','offer-tools',
    'tip','box-button','iv-form-table','right','left','mtxt','mdtxt','minitxt','stxt',
    'mini-form-table','info-data','head-red','head-dark','head-grey','tocenter',
    'odslony','items-list', 'hr','banners_list','bhr','row0-wyr','row1-wyr',
    'wyr3','wyr','row1','tr1','oferta','oferta-single','subfoot','subhead','subfoot-li',
    'comm-good','comm-bad','comm-neutral','item-link','tabs','subtabs','catlist',
    'btn','alert','notice', 'inline-btn-r','inline-btn-g','inline-btn-w','block-sbtn-w',
    'targuj','negocjuj','pokaz-wszystkie','zwin','seacrchOption','cena-wyw',
    'cena-sum','user-name','nextprev','oferty','prev','next','abs-option','txt-content',
    'options','kom-options','opt-wide','dots','help','wizzard','wizzard-stpes',
    'last-step','current','last','wizzard-content','vert','edOpis','fullWidth',
    'moja-strona','ed-help-top','ed-save','no-border','pokaz-najwyzsza','koz',
    'chbx','mb-targuj','sort','sort-down','sort-up','oddo','home-nk','nk','nk-sel',
    'ko','pfslogan','comment','kontakt','captcha', 'checkbox','radio','fieldWithErrors',
    'simplerow','currentdoc','addDescSep','addDescTime','sepHeader','green',
    'split','value','extra-item-attributes','in-place-edit','hover', 'editing',
    'disabled','buttons']
  config.restricted_ids = ['container','header','logo','top','naviBar','main','mojeContent',
    'tabsEd','edBa','edAdv','eedAdvHelp','eedSimpHelp','mceEditor','footer',
    'rejestracja','menu','item_form','item_name','item_duration','edBas',
    'item_template','szablonNazwa','item_template_name','image1','image2',
    'image3','image4','item_primary_image_number_1','item_primary_image_number_2',
    'item_primary_image_number_3','item_primary_image_number_4','item_buy_now_price',
    'item_seller_min_price','item_notify_seller','item_notify_seller_range',
    'item_seller_max_price','item_start_quantity','item_quantity_type','item_country_id',
    'item_state_id','item_location','item_shipment_cost_pays_seller','item_shipment_postal_package',
    'item_shipment_priority_postal_package','item_shipment_send_by_courier',
    'item_shipment_personal_acceptance','item_shipment_see_description',
    'item_shipment_send_abroad_is_allowed','item_payment_pay_by_transfer_before_send',
    'item_wire_transfer','item_payment_pay_on_delivery','item_post_delivery',
    'item_post_info','aukcja','negocjuj','kupnoZaraz','targuOpis','aukcjaInfo',
    'aukcjaOpis','aukcjaHead','aukcjaSlogan','aukcjaWystawZaDarmo','aukcjaFormSearch',
    'sdesc','aukcjaSignUpFreeOn','aukcjaSignUpFree','signup_rollover_1','signup_rollover_0',
    'offer_buy_now','offer_offer_price','offer_quantity','user_field']
  config.protocols = {
    'a' => {'href' => ['ftp', 'http', 'https', 'mailto', :relative]},
    'blockquote' => {'cite' => ['http', 'https', :relative]},
    'img' => {'src' => ['http', 'https', :relative]},
    'q' => {'cite' => ['http', 'https', :relative]}
  }
end