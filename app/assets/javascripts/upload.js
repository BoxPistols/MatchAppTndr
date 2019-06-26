// File Up Event .on(イベント名、　対象となる要素、　コールバック関数 )
$(document).on("change", "#file_photo", function(e) {
  // ファイル保存用変数
  var reader;
  // ファイルの有無の判定 チェンジイベントターゲットがあれば
  if (e.target.files.length) {
      // render変数にFileReaderオブジェクトのインスタンスを代入
      reader = new FileReader;
      // reader.onload > ファイルの読み込みが成功したときのイベント
      reader.onload = function(e) {
      // サムネイル用変数
      var userThumbnail;
      // サムネイル変数に、ID要素を取得させる
      userThumbnail = document.getElementById('thumbnail');
      // ID userImgPreview に　Block要素用クラス追加 デフォルトはNone
      $("#userImgPreview").addClass("is-active");
      // サムネイル要素に、取得したファイル名をsrc属性に入れる
      userThumbnail.setAttribute('src', e.target.result);
    };
    return reader.readAsDataURL(e.target.files[0]);
  }
});
