local lush = require("lush")
local colours = require('falcon.colours')
local styles = require('falcon.styles')
local classic = require('falcon.classic')

local p = lush(function()
    return {
        cssComment                  {}, -- Comment
        cssVendor                   {fg = colours.tan}, -- Comment
        cssHacks                    {}, -- Comment
        cssTagName                  {fg = colours.blue_gray}, -- Statement
        cssDeprecated               {}, -- Error
        cssSelectorOp               {}, -- Special
        cssSelectorOp2              {fg = colours.yellow}, -- Special
        cssAttrComma                {fg = colours.normal_gray}, -- Special
        cssAnimationProp            {}, -- cssProp
        cssBackgroundProp           {}, -- cssProp
        cssBorderProp               {}, -- cssProp
        cssBoxProp                  {}, -- cssProp
        cssColorProp                {}, -- cssProp
        cssContentForPagedMediaProp {}, -- cssProp
        cssDimensionProp            {}, -- cssProp
        cssFlexibleBoxProp          {}, -- cssProp
        cssFontProp                 {}, -- cssProp
        cssGeneratedContentProp     {}, -- cssProp
        cssGridProp                 {}, -- cssProp
        cssHyerlinkProp             {}, -- cssProp
        cssLineboxProp              {}, -- cssProp
        cssListProp                 {}, -- cssProp
        cssMarqueeProp              {}, -- cssProp
        cssMultiColumnProp          {}, -- cssProp
        cssPagedMediaProp           {}, -- cssProp
        cssPositioningProp          {}, -- cssProp
        cssPrintProp                {}, -- cssProp
        cssRubyProp                 {}, -- cssProp
        cssSpeechProp               {}, -- cssProp
        cssTableProp                {}, -- cssProp
        cssTextProp                 {}, -- cssProp
        cssTransformProp            {}, -- cssProp
        cssTransitionProp           {}, -- cssProp
        cssUIProp                   {}, -- cssProp
        cssIEUIProp                 {}, -- cssProp
        cssAuralProp                {}, -- cssProp
        cssRenderProp               {}, -- cssProp
        cssMobileTextProp           {}, -- cssProp
        cssAnimationAttr            {}, -- cssAttr
        cssBackgroundAttr           {}, -- cssAttr
        cssBorderAttr               {}, -- cssAttr
        cssBoxAttr                  {}, -- cssAttr
        cssContentForPagedMediaAttr {}, -- cssAttr
        cssDimensionAttr            {}, -- cssAttr
        cssFlexibleBoxAttr          {}, -- cssAttr
        cssFontAttr                 {}, -- cssAttr
        cssGeneratedContentAttr     {}, -- cssAttr
        cssGridAttr                 {}, -- cssAttr
        cssHyerlinkAttr             {}, -- cssAttr
        cssLineboxAttr              {}, -- cssAttr
        cssListAttr                 {}, -- cssAttr
        cssMarginAttr               {}, -- cssAttr
        cssMarqueeAttr              {}, -- cssAttr
        cssMultiColumnAttr          {}, -- cssAttr
        cssPaddingAttr              {}, -- cssAttr
        cssPagedMediaAttr           {}, -- cssAttr
        cssPositioningAttr          {}, -- cssAttr
        cssGradientAttr             {}, -- cssAttr
        cssPrintAttr                {}, -- cssAttr
        cssRubyAttr                 {}, -- cssAttr
        cssSpeechAttr               {}, -- cssAttr
        cssTableAttr                {}, -- cssAttr
        cssTextAttr                 {}, -- cssAttr
        cssTransformAttr            {}, -- cssAttr
        cssTransitionAttr           {}, -- cssAttr
        cssUIAttr                   {}, -- cssAttr
        cssIEUIAttr                 {}, -- cssAttr
        cssAuralAttr                {}, -- cssAttr
        cssRenderAttr               {}, -- cssAttr
        cssCommonAttr               {}, -- cssAttr
        cssPseudoClassId            {}, -- PreProc
        cssPseudoClassLang          {}, -- Constant
        cssValueLength              {}, -- Number
        cssValueInteger             {}, -- Number
        cssValueNumber              {}, -- Number
        cssValueAngle               {}, -- Number
        cssValueTime                {}, -- Number
        cssValueFrequency           {}, -- Number
        cssFunction                 {classic.Function}, -- Constant
        cssURL                      {}, -- String
        cssFunctionName             {}, -- Function
        cssFunctionComma            {}, -- Function
        cssColor                    {}, -- Constant
        cssIdentifier               {fg = colours.normal_gray}, -- Function
        cssInclude                  {fg = colours.normal_gray}, -- Include
        cssIncludeKeyword           {fg = colours.tan}, -- atKeyword
        cssImportant                {fg = colours.red, gui = styles.b}, -- Special
        cssBraces                   {classic.Delimiter}, -- Function
        cssBraceError               {}, -- Error
        cssError                    {}, -- Error
        cssUnicodeEscape            {}, -- Special
        cssStringQQ                 {}, -- String
        cssStringQ                  {}, -- String
        cssAttributeSelector        {fg = colours.normal_gray}, -- String
        cssMedia                    {}, -- atKeyword
        cssMediaType                {fg = colours.yellow, gui = styles.italic}, -- Special
        cssMediaComma               {}, -- Normal
        cssMediaKeyword             {fg = colours.yellow}, -- Statement
        cssMediaProp                {}, -- cssProp
        cssMediaAttr                {}, -- cssAttr
        cssPage                     {}, -- atKeyword
        cssPagePseudo               {}, -- PreProc
        cssPageMargin               {}, -- atKeyword
        cssPageProp                 {}, -- cssProp
        cssKeyFrame                 {}, -- atKeyword
        cssKeyFrameSelector         {}, -- Constant
        cssFontDescriptor           {fg = colours.tan}, -- Special
        cssFontDescriptorFunction   {}, -- Constant
        cssFontDescriptorProp       {}, -- cssProp
        cssFontDescriptorAttr       {}, -- cssAttr
        cssUnicodeRange             {}, -- Constant
        cssClassName                {fg = colours.normal_gray}, -- Function
        cssClassNameDot             {fg = colours.yellow}, -- Function
        cssProp                     {fg = colours.normal_gray}, -- StorageClass
        cssAttr                     {fg = colours.light_gray}, -- Constant
        cssUnitDecorators           {}, -- Number
        cssNoise                    {fg = colours.light_gray}, -- Noise
        atKeyword                   {}, -- PreProc
        cssPseudoClass              {fg = colours.light_gray},
        cssAtRuleLogical            {fg = colours.orange},
    }
end)

return p
