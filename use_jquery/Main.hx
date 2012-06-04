class Main {
    static function run() {
        var jQuery : Dynamic = untyped __js__("window.jQuery");
        jQuery("p").css("background", "#afa");
        jQuery("p").click(function(e){
            e.target.innerHTML += "hoge";
        });
    }
    static function main() {
        trace(untyped __js__("window"));
        // -> Main.hx:9: [object Window] main.js:85
        trace(untyped __js__("window.jQuery"));
        // -> Main.hx:10: <function>
        untyped { window.console.log(jQuery); }
        // -> function (a,b){return new e.fn.init(a,b,h)}
    }
}
