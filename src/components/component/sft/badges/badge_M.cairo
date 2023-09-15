const NAME: felt252 = 'SFT.BadgeM.svg';

#[starknet::contract]
mod Component {
    use metadata::interfaces::component::IComponent;
    use metadata::components::configs::svg;

    #[storage]
    struct Storage {}

    #[external(v0)]
    impl ComponentImpl of IComponent<ContractState> {
        fn name(self: @ContractState) -> felt252 {
            super::NAME
        }

        fn render(self: @ContractState, args: Option<Span<felt252>>) -> Array<felt252> {
            let props: svg::Properties = svg::parse_properties(args);

            let mut data: Array<felt252> = Default::default();
            svg::add_header_helper(props, ref data);

            data.append(' width=\\"40\\" height=\\"45\\"');
            data.append(' viewBox=\\"0 0 40 45\\" fill=');
            data.append('\\"none\\" xmlns=\\"http://www.');
            data.append('w3.org/2000/svg\\"><g clip-path');
            data.append('=\\"url(#clip0_medium)\\"><g fi');
            data.append('lter=\\"url(#filter0_b_medium)');
            data.append('\\"><path d=\\"M17.6784 1.25982');
            data.append('C19.131 0.471559 20.8793 0.4520');
            data.append('4 22.3492 1.20768L29.2683 4.764');
            data.append('71L37.3761 9.14371C38.9925 10.0');
            data.append('167 40 11.7059 40 13.5431V22.23');
            data.append('53V30.7341C40 32.5333 39.0333 3');
            data.append('4.1939 37.4686 35.0822L22.4686');
            data.append(' 43.5984C20.9377 44.4677 19.062');
            data.append('4 44.4677 17.5314 43.5984L2.531');
            data.append('37 35.0822C0.966714 34.1939 0 3');
            data.append('2.5334 0 30.7341V22.2353V13.605');
            data.append('6C0 11.7355 1.0436 10.0217 2.70');
            data.append('508 9.1634L11.2195 4.76471L17.6');
            data.append('784 1.25982Z\\" fill=\\"#D0D1D6');
            data.append('\\" fill-opacity=\\"0.2\\"/></g');
            data.append('><mask id=\\"path-2-inside-1_me');
            data.append('dium\\" fill=\\"white\\"><path');
            data.append(' d=\\"M18.1161 3.97613C19.2922');
            data.append(' 3.326 20.7163 3.30994 21.9068');
            data.append(' 3.93337L27.9119 7.07804L35.001');
            data.append('2 10.9783C36.2792 11.6814 37.07');
            data.append('31 13.0244 37.0731 14.4829V22.2');
            data.append('699V29.8839C37.0731 31.3119 36.');
            data.append('3118 32.6316 35.0756 33.3465L22');
            data.append('.0025 40.9071C20.7636 41.6236 1');
            data.append('9.2363 41.6236 17.9974 40.9071L');
            data.append('4.92422 33.3465C3.68804 32.6316');
            data.append(' 2.92676 31.3119 2.92676 29.883');
            data.append('9V22.2699V14.5333C2.92676 13.04');
            data.append('81 3.74966 11.6851 5.06398 10.9');
            data.append('935L12.5044 7.07804L18.1161 3.9');
            data.append('7613Z\\"/></mask><path d=\\"M18');
            data.append('.1161 3.97613C19.2922 3.326 20.');
            data.append('7163 3.30994 21.9068 3.93337L27');
            data.append('.9119 7.07804L35.0012 10.9783C3');
            data.append('6.2792 11.6814 37.0731 13.0244');
            data.append(' 37.0731 14.4829V22.2699V29.883');
            data.append('9C37.0731 31.3119 36.3118 32.63');
            data.append('16 35.0756 33.3465L22.0025 40.9');
            data.append('071C20.7636 41.6236 19.2363 41.');
            data.append('6236 17.9974 40.9071L4.92422 33');
            data.append('.3465C3.68804 32.6316 2.92676 3');
            data.append('1.3119 2.92676 29.8839V22.2699V');
            data.append('14.5333C2.92676 13.0481 3.74966');
            data.append(' 11.6851 5.06398 10.9935L12.504');
            data.append('4 7.07804L18.1161 3.97613Z\\" f');
            data.append('ill=\\"url(#paint0_linear_mediu');
            data.append('m)\\" fill-opacity=\\"0.15\\" s');
            data.append('troke=\\"url(#paint1_linear_med');
            data.append('ium)\\" stroke-width=\\"3\\" ma');
            data.append('sk=\\"url(#path-2-inside-1_medi');
            data.append('um)\\"/><mask id=\\"mask0_mediu');
            data.append('m\\" style=\\"mask-type:alpha\\');
            data.append('" maskUnits=\\"userSpaceOnUse\\');
            data.append('" x=\\"0\\" y=\\"0\\" width=\\"');
            data.append('40\\" height=\\"46\\"><path d=');
            data.append('\\"M20 0.000732528L29.2683 4.76');
            data.append('544L40 10.5616L40 22.236L40 33.');
            data.append('6457L20 45.0007L-1.78451e-07 33');
            data.append('.6457L-1.17935e-07 22.236L-5.60');
            data.append('143e-08 10.5616L11.2195 4.76544');
            data.append('L20 0.000732528Z\\" fill=\\"#E1');
            data.append('E7EA\\"/></mask><g mask=\\"url(');
            data.append('#mask0_medium)\\"><rect opacity');
            data.append('=\\"0.1\\" width=\\"47.8878\\"');
            data.append(' height=\\"22.3042\\" transform');
            data.append('=\\"matrix(0.600773 -0.799419 0');
            data.append('.79785 0.602857 5.2915 41.7463)');
            data.append('\\" fill=\\"#191A20\\"/></g><te');
            data.append('xt fill=\\"#EBECF0\\" xml:space');
            data.append('=\\"preserve\\" style=\\"white-');
            data.append('space: pre\\" font-family=\\"In');
            data.append('ter\\" font-size=\\"15\\" font-');
            data.append('weight=\\"bold\\" letter-spacin');
            data.append('g=\\"0em\\"><tspan x=\\"13.1372');
            data.append('\\" y=\\"28.4545\\">M</tspan></');
            data.append('text></g><defs><filter id=\\"fi');
            data.append('lter0_b_medium\\" x=\\"-4\\" y=');
            data.append('\\"-3.34552\\" width=\\"48\\" h');
            data.append('eight=\\"51.5959\\" filterUnits');
            data.append('=\\"userSpaceOnUse\\" color-int');
            data.append('erpolation-filters=\\"sRGB\\"><');
            data.append('feFlood flood-opacity=\\"0\\" r');
            data.append('esult=\\"BackgroundImageFix\\"/');
            data.append('><feGaussianBlur in=\\"Backgrou');
            data.append('ndImageFix\\" stdDeviation=\\"2');
            data.append('\\"/><feComposite in2=\\"Source');
            data.append('Alpha\\" operator=\\"in\\" resu');
            data.append('lt=\\"effect1_backgroundBlur_me');
            data.append('dium\\"/><feBlend mode=\\"norma');
            data.append('l\\" in=\\"SourceGraphic\\" in2');
            data.append('=\\"effect1_backgroundBlur_medi');
            data.append('um\\" result=\\"shape\\"/></fil');
            data.append('ter><linearGradient id=\\"paint');
            data.append('0_linear_medium\\" x1=\\"2.9267');
            data.append('6\\" y1=\\"22.5\\" x2=\\"37.073');
            data.append('1\\" y2=\\"22.5\\" gradientUnit');
            data.append('s=\\"userSpaceOnUse\\"><stop st');
            data.append('op-color=\\"#AB4883\\"/><stop o');
            data.append('ffset=\\"1\\" stop-color=\\"#87');
            data.append('85FF\\"/></linearGradient><line');
            data.append('arGradient id=\\"paint1_linear_');
            data.append('medium\\" x1=\\"2.92676\\" y1=');
            data.append('\\"22.5\\" x2=\\"37.0731\\" y2=');
            data.append('\\"22.5\\" gradientUnits=\\"use');
            data.append('rSpaceOnUse\\"><stop stop-color');
            data.append('=\\"#AB4883\\"/><stop offset=\\');
            data.append('"1\\" stop-color=\\"#8785FF\\"/');
            data.append('></linearGradient><clipPath id=');
            data.append('\\"clip0_medium\\"><rect width=');
            data.append('\\"40\\" height=\\"45\\" fill=');
            data.append('\\"white\\"/></clipPath></defs>');
            data.append('</svg>');

            data
        }
    }
}

#[cfg(test)]
mod test {
    use array::{ArrayTrait, SpanTrait};
    use debug::PrintTrait;
    use traits::Into;

    use test::test_utils::assert_eq;

    use super::Component;
    use metadata::components::configs::svg;

    #[test]
    #[available_gas(15_000)]
    fn test_component_name() {
        let data: Span<felt252> = Component::__external::name(Default::default().span());
        let name: felt252 = *data[0];
        assert_eq(@name, @super::NAME, 'Couldn\'t get name');
    }

    #[test]
    #[available_gas(847000)]
    fn test_component_get() {
        let mut calldata: Array<felt252> = Default::default();
        let props: svg::Properties = Default::default();
        let mut props_se: Array<felt252> = Default::default();
        props.serialize(ref props_se);
        let args_props: Option<Span<felt252>> = Option::Some(props_se.span());
        args_props.serialize(ref calldata);
        let data: Span<felt252> = Component::__external::render(calldata.span());
        // data.len().print();
        assert_eq(@data.len(), @121_u32, 'Couldn\'t get data');
        let mut arr: Array<felt252> = ArrayTrait::new();
    }
}
