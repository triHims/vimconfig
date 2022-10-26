return {
    --[[ Middles with the jumps and expansion, remove it   ]]
    --[[ s("{", ]]
        --[[ { c(1, { sn(nil, { t { "{", "" }, r(1, "savtext"), t({ "", "}" }) }), sn(nil, { t("{ "), r(1, "savtext"), t " }" }) }), ]]
             --[[ },{ stored = { savtext = i(1) } }), ]]
    s("\' ", { t { "\' " }, i(1), t({ " \'" }) }),
    s('\" ', { t { '\" ' }, i(1), t({ ' \"' }) }),
    s('(', { t { '( ' }, i(1), t({ ' )' }) }),
    s('<', { t { '< ' }, i(1), t({ ' >' }) })
}

